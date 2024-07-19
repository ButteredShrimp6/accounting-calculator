using Android.App;
using Android.OS;
using Android.Runtime;
using Android.Widget;
using Android.Content;
using AndroidX.AppCompat.App;
using Java.Security;

namespace FinalExam
{
    [Activity(Label = "@string/app_name", Theme = "@style/AppTheme", MainLauncher = true)]
    public class MainActivity : AppCompatActivity
    {
        Button Interest, InterestRate, SimpleInterest, CompoundInterest, Discount, SLD, UOP;
        protected override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);
            Xamarin.Essentials.Platform.Init(this, savedInstanceState);
            // Set our view from the "main" layout resource
            SetContentView(Resource.Layout.layout1);

            Interest = FindViewById<Button>(Resource.Id.button1);
            Interest.Click += Btn_Click;
            InterestRate = FindViewById<Button>(Resource.Id.button2);
            InterestRate.Click += InterestRate_Click;
            SimpleInterest = FindViewById<Button>(Resource.Id.button3);
            SimpleInterest.Click += SimpleInterest_Click;
            CompoundInterest = FindViewById<Button>(Resource.Id.button4);
            CompoundInterest.Click += CompoundInterest_Click;
            Discount = FindViewById<Button>(Resource.Id.button5);
            Discount.Click += Discount_Click;
            SLD = FindViewById<Button>(Resource.Id.button6);
            SLD.Click += SLD_Click;
            UOP = FindViewById<Button>(Resource.Id.button8);
            UOP.Click += UOP_Click;
        }

        private void UOP_Click(object sender, System.EventArgs e)
        {
            Intent i = new Intent(this, typeof(UnitofProduct));
            StartActivity(i);
        }

        private void SLD_Click(object sender, System.EventArgs e)
        {
            Intent i = new Intent(this, typeof(SLD));
            StartActivity(i);
        }

        private void Discount_Click(object sender, System.EventArgs e)
        {
            Intent i = new Intent(this, typeof(Discount));
            StartActivity(i);
        }

        private void CompoundInterest_Click(object sender, System.EventArgs e)
        {
            Intent i = new Intent(this, typeof(CompoundInterest));
            StartActivity(i);
        }

        private void SimpleInterest_Click(object sender, System.EventArgs e)
        {
            Intent i = new Intent(this, typeof(SimpleInterest));
            StartActivity(i);
        }

        private void Btn_Click(object sender, System.EventArgs e)
        {
            Intent i = new Intent(this, typeof(Interest));
            StartActivity(i);
        }

        private void InterestRate_Click(object sender, System.EventArgs e)
        {
            Intent i = new Intent(this, typeof(InterestRate));
            StartActivity(i);
        }


        public override void OnRequestPermissionsResult(int requestCode, string[] permissions, [GeneratedEnum] Android.Content.PM.Permission[] grantResults)
        {
            Xamarin.Essentials.Platform.OnRequestPermissionsResult(requestCode, permissions, grantResults);

            base.OnRequestPermissionsResult(requestCode, permissions, grantResults);
        }
    }
}