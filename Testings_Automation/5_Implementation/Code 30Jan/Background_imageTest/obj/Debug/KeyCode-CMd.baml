   M S B A M L   `   `   `  ����O  KBackground_imageTest, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null;"clr-namespace:Background_imageTestBackground_imageTest  5   	   &     Background_imageTest.KeyCode_CMd   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   4local"clr-namespace:Background_imageTest     5   	     � WindowStyle$
  None=�5   	    � 
ResizeMode$ NoResize=�5	   	    J� Opacity$	 0.6Q�5
   	    � WindowStartupLocation$ CenterScreen=�5   	   ���#002D33 � AllowsTransparency .  � Title$ KeyCode_CMd��5   	   $	��300��6   $	��300��6*   .��5      �  � RowDefinitions 5   
   �� 5      $
��auto �6   5      �� 5      5      .+�5   
   �� -   5        $��Right=�5      $��35��6/   $��35��6;   
������ $��0q�6s    � 	Resources 5       �� Color��%X   (��       5   "   * SystemColors.HighlightBrushKey+)�� 6   $ Transparent��6T   5      .��5      �� $��Images/close.png��6   $
��Fill=�6.   $��30��6=   $��32��6I   5      �� 5   
   -   5        	 ��Name$	 label��5      $��0��6   $��Keycode��6-   $��Center=�6?   $��0q�6\   $	��Top=�6g   
 J� RenderTransformOrigin$
 0.977,-2.171&�6   $��26(�6�   ���#00E5FF$
��Bold"�6�   �� 5    
   $��1��6   $��Center=�6"   .+�5!      �� $��5q�6   $��1��6$   $
��auto��61   $��Center=�6?    �� Orientation$ 
Horizontal=�6\   .+�5"      �� -   5        $	 Device_label��5"      $��Device ��6/   $
 0.977,-2.171&�6B   $��20(�6g   
�������$
��Bold"�6�   $��32��6�   �� 5$      -   5        $��
Device_cmb��5$      $��1��6-   $��30��6:    �� SelectedIndex$ 0��6F    �� SelectedValuePath$ Content��6X   $
��Bold"�6t   $��16(�6�   $��10q�6�   $	��200��6�   
���   �
�������$��Right=�6�   $	 0.5Q�6�    5%      ��%P   (��       5&   *   * SystemColors.HighlightBrushKey+)�� 6   $	 Red��6\   5'      .@�5(      �� $��Device 1��6$   5*      �� 5+      $��Device 2��6$   5-      �� 5.      $��Device 3��6$   50      �� 51      $��Device 4��6$   53      �� 54      $��Device 5��6$   56      �� 57      $��Device 6��6$   59      ��5:      �� 5;       �� 
TargetType" ��6    .�5<      ��  �� Property � �� �� Value �#002D336;   �� 5=       � ��$
 Bold"�6;   �� 5>       � ��$ 14(�69   �� 5?       � ��$ 2q�68   �� 5@       � ��
 �����6;   5A      5C      5D      �� 5E      $��5q�6   $��1��6$   $
��auto��61   $��Center=�6?   $ 
Horizontal=�6\   .+�5F      �� -   5        $	 Code_lbl��5F      $��Code ��6+   $
 0.977,-2.171&�6<   $��20(�6a   
�������$
��Bold"�6�   $��32��6�   �� 5H      -   5        $��Code_txt��5H       �� 	MaxLength$ 14��6*    �� 
CaretBrush
 �����$��10 0 0 0q�6y   $��1��6�   
������ $��0 0 0 4q�6�   
����� �
 � Tag$ 	PrivateIP��6�   $��22(�6�   $��32��6�    �� TextWrapping$
 Wrap=�6  $	��200��6!  
�������.��6@  5J      5K      �� 5L      -   5        $��Command_btn��5L      $
��Auto��6(   $	��100��66   $��50 40 20 20q�6B   
������ $��3q�6p   $
��Send��6�   $��22(�6�   $
��Bold"�6�   ���#E91E63
�������6�   5N      5O      5P      