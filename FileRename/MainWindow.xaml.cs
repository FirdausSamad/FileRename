using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.IO;
using Microsoft.Win32;

namespace FileRename
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        private static string filePath;
        private static string fileName;
        private static string fileExtension;
        public MainWindow()
        {
            InitializeComponent();
        }

        private void btnBrowse_Click(object sender, RoutedEventArgs e)
        {
            OpenFileDialog openFileDialog = new OpenFileDialog();
            openFileDialog.Multiselect = true;
            if (openFileDialog.ShowDialog() == true)
            {
                foreach (String file in openFileDialog.FileNames)
                {
                    filePath = System.IO.Path.GetDirectoryName(file);
                    fileName = System.IO.Path.GetFileName(file);
                    fileExtension = System.IO.Path.GetExtension(file);
               
                    lbFileName.Items.Add(fileName);
                }
            }
        }

        private void btnRename_Click(object sender, RoutedEventArgs e)
        {
            int startingNumber;
            bool success =false;
            if (txtStartingNumber.Text == "")
            {
                startingNumber = 1;
            }
            else if (!int.TryParse(txtStartingNumber.Text, out startingNumber))
            {
                MessageBox.Show("Please enter file starting number");
            }
            else
                startingNumber = Convert.ToInt32(txtStartingNumber.Text);

            foreach(string i in lbFileName.Items)
            {
                
                if (File.Exists(filePath + "\\" + i))
                {
                    System.IO.File.Move(filePath + "\\" + i, filePath + "\\" + txtRename.Text+ " "+startingNumber + fileExtension);
                        startingNumber++;
                    success = true;
                }
                else { MessageBox.Show("File not exist"); break; }
            }

            if(success)
            {
                MessageBox.Show("Rename Success!");
                System.Diagnostics.Process.Start("explorer.exe", filePath);
            }

        }

        private void btnRemove_Click(object sender, RoutedEventArgs e)
        {
            var selected =lbFileName.SelectedItems.Cast<Object>().ToArray();
            if(lbFileName.SelectedItem == null)
            { MessageBox.Show("Please select item to remove"); }
            else foreach (var item in selected) lbFileName.Items.Remove(item); // or whereever you need to remove them...
        }


        public void MoveItem(int direction)
        {
            // Checking selected item
            if (lbFileName.SelectedItem == null || lbFileName.SelectedIndex < 0)
                return; // No selected item - nothing to do

            // Calculate new index using move direction
            int newIndex = lbFileName.SelectedIndex + direction;

            // Checking bounds of the range
            if (newIndex < 0 || newIndex >= lbFileName.Items.Count)
                return; // Index out of range - nothing to do

            object selected = lbFileName.SelectedItem;

            // Removing removable element
            lbFileName.Items.Remove(selected);
            // Insert it in new position
            lbFileName.Items.Insert(newIndex, selected);
            // Restore selection
            //lbFileName.SelectedIndex(newIndex, true);
        }

        private void btnUp_Click(object sender, RoutedEventArgs e)
        {
            MoveItem(-1);
        }

        private void btnDown_Click(object sender, RoutedEventArgs e)
        {
            MoveItem(1);
        }
    }
}
