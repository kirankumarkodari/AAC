   M S B A M L   `   `   `  ���� O  KBackground_imageTest, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null)clr-namespace:AACTestToolAACTestTool      AACTestTool.KeyCode_CMd   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     +localclr-namespace:AACTestTool       � WindowStyle$
  None=� � 
ResizeMode$ NoResize=� J� Opacity$	 0.6Q� � WindowStartupLocation$ CenterScreen=����#002D33 � AllowsTransparency .  � Title$ KeyCode_CMd��$	��300��$	��300��.���  � RowDefinitions �� $
��auto ��� .+��� -   $��Right=�$��35��$��35��
������ $��0q� � 	Resources  �� Color��%E   (��       * SystemColors.HighlightBrushKey+)�� $ Transparent��.���� $��Images/close.png��$
��Fill=�$��30��$��32���� -   	 ��Name$	 label��$��0��$��Keycode��$��Center=�$��0q�$	��Top=�
 J� RenderTransformOrigin$
 0.977,-2.171&�$��26(����#00E5FF$
��Bold"��� $��1��$��Center=�.+��� $��5q�$��1��$
��auto��$��Center=� �� Orientation$ 
Horizontal=�.+��� -   $	 Device_label��$��Device ��$
 0.977,-2.171&�$��20(�
�������$
��Bold"�$��32���� -   $��
Device_cmb��$��1��$��30�� �� SelectedIndex$ 0�� �� SelectedValuePath$ Content��$
��Bold"�$��16(�$��10q�$	��200��
���   �
�������$��Right=�$	 0.5Q� ��%=   (��       * SystemColors.HighlightBrushKey+)�� $	 Red��.@��� $��Device 1���� $��Device 2���� $��Device 3���� $��Device 4���� $��Device 5���� $��Device 6������  �� 
TargetType" ��.���  �� Property � �� �� Value �#002D33��  � ��$
 Bold"���  � ��$ 14(���  � ��$ 2q���  � ��
 ������� $��5q�$��1��$
��auto��$��Center=�$ 
Horizontal=�.+��� -   $	 Code_lbl��$��Code ��$
 0.977,-2.171&�$��20(�
�������$
��Bold"�$��32���� -   $��Code_txt�� �� 	MaxLength$ 14�� �� 
CaretBrush
 �����$��10 0 0 0q�$��1��
������ $��0 0 0 4q�
����� �
 � Tag$ 	PrivateIP��$��22(�$��32�� �� TextWrapping$
 Wrap=�$	��200��
�������.���� -   $��Command_btn��$
��Auto��$	��100��$��50 40 20 20q�
������ $��3q�$
��Send��$��22(�$
��Bold"����#E91E63
�������