   M S B A M L   `   `   `  ����O  KBackground_imageTest, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null;"clr-namespace:Background_imageTestBackground_imageTest  5   	   %    Background_imageTest.MainWindow   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   4local"clr-namespace:Background_imageTest     5   	     � Title$  
MainWindow��5   	   $	��350��6   $	��525��6)    � WindowStyle$ SingleBorderWindow=�5	   	    � AllowsTransparency .   � WindowStartupLocation$ CenterScreen=�5   	    � WindowState$ 	Maximized=�5   	   .��5      �  � RowDefinitions 5   
   �� 5      $
��auto �6   �� 5       � ColumnDefinitions 5   
   .+�5   
   �� -   5         ��Name$ label��5   -   $��0��6   $��0��6   $��American Acess Control��6<   $��Center=�6]   $��0q�6z   $	��Top=�6�    J� RenderTransformOrigin$ 0.977,-2.171&�6�   $��34(�6�   
������$
��Bold"�6�   �� 5   
   $��1��6   $��Center=�6"   .+�5   
   �� $��8q�6   $��1��6    $
��auto��6-   $��Center=�6;   	 �� Orientation$	 
Horizontal=�6X   .+�5      �� -   5        $ Ip_label��5      $��
PrivateIP:��6+   $ 0.977,-2.171&�6A   $��20(�6f   
�������$
��Bold"�6�   $��32��6�   �� 5      -   5        $��
ip_textBox��5      
 �� 
CaretBrush

 �����$��10 0 0 0q�6A   
������ $��0 0 0 4q�6m   
����� �
 � Tag$ 	PrivateIP��6�   $��22(�6�   $��32��6�    �� TextWrapping$
 Wrap=�6�   $	��200��6�   
�������6�   5      �� 5   
   $��8q�6   $��1��6    $
��auto��6-   $��Center=�6;   $	 
Horizontal=�6X   .+�5      �� -   5        $ 
port_label��5      $��Port  :��6-   $ 0.977,-2.171&�6@   $��20(�6e   
�������$
��Bold"�6�   $��32��6�   �� 5      -   5        $��port_textBox��5       �� 	MaxLength$ 5��6.   

 �����
������ $��0 0 0 4q�6�   $��40 0 0 0q�6�   
����� �$ 	PrivateIP��6�   $��22(�6�   $��32��6�   $
 Wrap=�6�   $	��200��6  
�������6!  5       �� 5!      -   5        $��Button_connect��5!      $
��Auto��6+   $	��150��69   $��80 40 20 20q�6E   
������ $��3q�6s   $��Connect��6�   $��22(�6�   $
��Bold"�6�   ���#E91E63
�������6  5$      5%       � 	Resources 5&      ��%    5(      ��5)      �� 5*   
    �� ImageSource$ Images/bg2.jpg��6   5+      5-      