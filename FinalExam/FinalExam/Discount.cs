using Android.App;
using Android.Content;
using Android.OS;
using Android.Runtime;
using Android.Views;
using Android.Widget;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace FinalExam
{
    [Activity(Label = "Discount")]
    public class Discount : Activity
    {
        TextView D_Text;
        EditText ListPrice, SellPrice;
        Button D_Button;

        protected override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);
            Xamarin.Essentials.Platform.Init(this, savedInstanceState);
            // Set our view from the "main" layout resource
            SetContentView(Resource.Layout.Discount);
            D_Text = FindViewById<TextView>(Resource.Id.textView2);
            ListPrice = FindViewById<EditText>(Resource.Id.editText1);
            SellPrice = FindViewById<EditText>(Resource.Id.editText2);
            D_Button = FindViewById<Button>(Resource.Id.Dbtn);

            D_Button.Click += D_Button_Click;
        }

        private void D_Button_Click(object sender, EventArgs e)
        {
            float listprice = float.Parse(ListPrice.Text);
            float value = float.Parse(SellPrice.Text);
            Computation.AccountancyComputations cb = new Computation.AccountancyComputations();
            string answer = (cb.calculateDiscount(listprice, value)).ToString();
            D_Text.Text = answer +"%";
        }
    }
}