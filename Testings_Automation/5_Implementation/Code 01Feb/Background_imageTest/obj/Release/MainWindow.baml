   M S B A M L   `   `   `  ���� O  KBackground_imageTest, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null)clr-namespace:AACTestToolAACTestTool      AACTestTool.MainWindow   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     +localclr-namespace:AACTestTool       � Title$  
MainWindow��$	��350��$	��525�� � WindowStyle$ SingleBorderWindow=� � AllowsTransparency .   � WindowStartupLocation$ CenterScreen=� � WindowState$ 	Maximized=�.���  � RowDefinitions �� $
��auto ���  � ColumnDefinitions .+��� -    ��Name$ label��$��0��$��0��$��American Acess Control��$��Center=�$��0q�$	��Top=� J� RenderTransformOrigin$ 0.977,-2.171&�$��34(�
������$
��Bold"��� $��1��$��Center=�.+��� $��8q�$��1��$
��auto��$��Center=�	 �� Orientation$	 
Horizontal=�.+��� -   $ Ip_label��$��
PrivateIP:��$ 0.977,-2.171&�$��20(�
�������$
��Bold"�$��32���� -   $��
ip_textBox��
 �� 
CaretBrush

 �����$��10 0 0 0q�
������ $��0 0 0 4q�
����� �
 � Tag$ 	PrivateIP��$��22(�$��32�� �� TextWrapping$
 Wrap=�$	��200��
��������� $��8q�$��1��$
��auto��$��Center=�$	 
Horizontal=�.+��� -   $ 
port_label��$��Port  :��$ 0.977,-2.171&�$��20(�
�������$
��Bold"�$��32���� -   $��port_textBox�� �� 	MaxLength$ 5��

 �����
������ $��0 0 0 4q�$��40 0 0 0q�
����� �$ 	PrivateIP��$��22(�$��32��$
 Wrap=�$	��200��
��������� -   $��Button_connect��$
��Auto��$	��150��$��80 40 20 20q�
������ $��3q�$��Connect��$��22(�$
��Bold"����#E91E63
������� � 	Resources ��%    ����  �� ImageSource$ Images/bg2.jpg��