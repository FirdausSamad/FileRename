   M S B A M L   `   `   `  ����E  AFileRename, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null'clr-namespace:FileRename
FileRename  5   	       FileRename.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   *localclr-namespace:FileRename     5   	     � Title$  
MainWindow��5   	   $	��350��6   $	��525��6)    � 
ResizeMode$ NoResize=�65   .��5	      � .+�5
   
   �� -   5         ��Name$ 	btnBrowse��5
      $��Browse��6$   $
��Left=�65   $��
35,145,0,0q�6P   $	��Top=�6d   $��75��6|   6�   �� 5   
   -   5         ��Name$ 	txtRename��5      $
��Left=�6%   $��23��6@   $��
35,217,0,0q�6L    �� TextWrapping$
 Wrap=�6`   $�� ��6t   $	��Top=�6|   $	��299��6�   �� 5   
   -   5        $ 	btnRename��5      $��Rename��6$   $
��Left=�65   $��
35,254,0,0q�6P   $	��Top=�6d   $��75��6|    J� RenderTransformOrigin$ 
0.413,2.65&�6�   �� 5   
   -   5         ��Name$ 
lbFileName��5      $
��Left=�6&   $	��104��6A   $��	35,36,0,0q�6N   $	��Top=�6a   $	��299��6y    �� SelectionMode$ Extended=�6�   �� 5   
   -   5         ��Name$ lblStartingNumber��5      $��File Starting Number��6+   $
��Left=�6J   $��
358,63,0,0q�6e   $	��Top=�6y   $
��Bold"�6�   �� 5   
   -   5        $ txtStartingNumber��5      $
��Left=�6-   $��23��6H   $��
358,94,0,0q�6T   $
 Wrap=�6h   $��1��6|   $	��Top=�6�   $	��128��6�   �� 5   
   -   5        $ lblFileList��5      $��	File List��6%   $
��Left=�69   $��	35,10,0,0q�6T   $	��Top=�6g   $
��Bold"�6   �� 5   
   -   5        $ 	btnRemove��5      $��Remove��6$   $
��Left=�65   $��115,145,0,0q�6P   $	��Top=�6e   $��75��6}   6�   �� 5   
   -	   5        $ 
lblNewName��5      $��New Name��6$   $
��Left=�67   $��
35,186,0,0q�6R   $	��Top=�6f   $
��Bold"�6~   �� 5   
   -
   5        $ lblChangePosition��5      $��Change File Position��6+   $
��Left=�6J   $��
358,10,0,0q�6e   $	��Top=�6y   $ 0.289,-0.192&�6�   $
��Bold"�6�   �� 5   
   -   5        $ btnUp��5      $
��Left=�6!   $��
372,41,0,0q�6<   $	��Top=�6P   $��16��6h   $ 0.381,0.588&�6s   $��17��6�   ��6�   Z� ��6�   Z� .��5      F� F����Pq P#� � � �@� Ѱ$� P#� р���� � �  z р�[ ��� �Pq P#� 	���	#FF555151$��13��6h   	 �� Stretch$
	 Fill=�6t   5      �� 5   
   -   5        $ btnDown��5      $
��Left=�6#   $��
393,41,0,0q�6>   $	��Top=�6R   $��16��6j   ��6u   Z� ��6�   Z� .��5      F� F����Pq P#� � � �@� Ѱ$� P#� р���� � �  z р�[ ��� �Pq P#� 	���	#FF555151$��13��6h   $
	 Fill=�6t   $ 0.5,0.5&�6�   z�5      V� 5      .~�5      �� �� 5      �� 5      
 �� Angle$
 180.66Q�6*   T� 5      5      5!      5"      5$      5%      