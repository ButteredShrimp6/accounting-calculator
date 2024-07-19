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
    [Activity(Label = "UOP")]
    public class UnitofProduct : Activity
    {
        TextView UOP_Text;
        EditText UOP_Cost, UOP_Value, UOP_Life;
        Button UOP_Button;
        protected override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);
            Xamarin.Essentials.Platform.Init(this, savedInstanceState);
            // Set our view from the "main" layout resource
            SetContentView(Resource.Layout.UnitofProduct);

            UOP_Text = FindViewById<TextView>(Resource.Id.textView2);
            UOP_Cost = FindViewById<EditText>(Resource.Id.editText1);
            UOP_Value = FindViewById<EditText>(Resource.Id.editText2);
            UOP_Life = FindViewById<EditText>(Resource.Id.editText3);
            UOP_Button = FindViewById<Button>(Resource.Id.ProductBtn);

            UOP_Button.Click += UOP_Button_Click;

        }

        private void UOP_Button_Click(object sender, EventArgs e)
        {
            float cost = float.Parse(UOP_Cost.Text);
            float value = float.Parse(UOP_Value.Text);
            float life = float.Parse(UOP_Life.Text);
            Computation.AccountancyComputations cb = new Computation.AccountancyComputations();
            float answer = cb.unitofProduct(cost, value, life);
            UOP_Text.Text = answer.ToString();
        }
    }
}