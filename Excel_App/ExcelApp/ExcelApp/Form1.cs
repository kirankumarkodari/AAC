using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using Microsoft.Office.Interop.Excel;
using Excel= Microsoft.Office.Interop.Excel;

namespace ExcelApp
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }
        
        private void button1_Click(object sender, EventArgs e)
        {
            //openFileDialog1.Filter
            if(openFileDialog1.ShowDialog()==DialogResult.OK)
            {
                string filename = openFileDialog1.FileName;
                if(File.Exists(filename))
                {
                    ExcelClass Excelobj = new ExcelClass(filename,1);
                    string val=Excelobj.ReadCell(24, 4);
                    MessageBox.Show(val);
                }
                
            }
        }
     
    }
    public class ExcelClass
    {
        _Application excel = new Excel.Application();
        Workbook wb;
        Worksheet ws;
        public ExcelClass(string path, int sheet)
        {
            
            try
            {
                wb = excel.Workbooks.Open(path);
                ws = wb.Worksheets[sheet];
                // MessageBox.Show(filename);
            }
            catch (Exception ex)
            {
                MessageBox.Show("failed to Open Excel File ");
            }
        }
        public string ReadCell(int i,int j)
        {
            i++;
            j++;
            if(ws.Cells[i,j].Value2!=null)
            {
                return ws.Cells[i, j].Value2;
            }
            else
            {
                return "";
            }
        }
        
    }
}
