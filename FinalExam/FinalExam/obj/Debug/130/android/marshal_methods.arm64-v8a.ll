; ModuleID = 'obj\Debug\130\android\marshal_methods.arm64-v8a.ll'
source_filename = "obj\Debug\130\android\marshal_methods.arm64-v8a.ll"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-android"


%struct.MonoImage = type opaque

%struct.MonoClass = type opaque

%struct.MarshalMethodsManagedClass = type {
	i32,; uint32_t token
	%struct.MonoClass*; MonoClass* klass
}

%struct.MarshalMethodName = type {
	i64,; uint64_t id
	i8*; char* name
}

%class._JNIEnv = type opaque

%class._jobject = type {
	i8; uint8_t b
}

%class._jclass = type {
	i8; uint8_t b
}

%class._jstring = type {
	i8; uint8_t b
}

%class._jthrowable = type {
	i8; uint8_t b
}

%class._jarray = type {
	i8; uint8_t b
}

%class._jobjectArray = type {
	i8; uint8_t b
}

%class._jbooleanArray = type {
	i8; uint8_t b
}

%class._jbyteArray = type {
	i8; uint8_t b
}

%class._jcharArray = type {
	i8; uint8_t b
}

%class._jshortArray = type {
	i8; uint8_t b
}

%class._jintArray = type {
	i8; uint8_t b
}

%class._jlongArray = type {
	i8; uint8_t b
}

%class._jfloatArray = type {
	i8; uint8_t b
}

%class._jdoubleArray = type {
	i8; uint8_t b
}

; assembly_image_cache
@assembly_image_cache = local_unnamed_addr global [0 x %struct.MonoImage*] zeroinitializer, align 8
; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = local_unnamed_addr constant [118 x i64] [
	i64 120698629574877762, ; 0: Mono.Android => 0x1accec39cafe242 => 2
	i64 210515253464952879, ; 1: Xamarin.AndroidX.Collection.dll => 0x2ebe681f694702f => 22
	i64 232391251801502327, ; 2: Xamarin.AndroidX.SavedState.dll => 0x3399e9cbc897277 => 43
	i64 295915112840604065, ; 3: Xamarin.AndroidX.SlidingPaneLayout => 0x41b4d3a3088a9a1 => 44
	i64 634308326490598313, ; 4: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x8cd840fee8b6ba9 => 35
	i64 702024105029695270, ; 5: System.Drawing.Common => 0x9be17343c0e7726 => 55
	i64 720058930071658100, ; 6: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x9fe29c82844de74 => 31
	i64 872800313462103108, ; 7: Xamarin.AndroidX.DrawerLayout => 0xc1ccf42c3c21c44 => 28
	i64 940822596282819491, ; 8: System.Transactions => 0xd0e792aa81923a3 => 56
	i64 1000557547492888992, ; 9: Mono.Security.dll => 0xde2b1c9cba651a0 => 57
	i64 1120440138749646132, ; 10: Xamarin.Google.Android.Material.dll => 0xf8c9a5eae431534 => 52
	i64 1315114680217950157, ; 11: Xamarin.AndroidX.Arch.Core.Common.dll => 0x124039d5794ad7cd => 17
	i64 1624659445732251991, ; 12: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0x168bf32877da9957 => 15
	i64 1628611045998245443, ; 13: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0x1699fd1e1a00b643 => 37
	i64 1636321030536304333, ; 14: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0x16b5614ec39e16cd => 32
	i64 1795316252682057001, ; 15: Xamarin.AndroidX.AppCompat.dll => 0x18ea3e9eac997529 => 16
	i64 1836611346387731153, ; 16: Xamarin.AndroidX.SavedState => 0x197cf449ebe482d1 => 43
	i64 1875917498431009007, ; 17: Xamarin.AndroidX.Annotation.dll => 0x1a08990699eb70ef => 14
	i64 1981742497975770890, ; 18: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x1b80904d5c241f0a => 36
	i64 2136356949452311481, ; 19: Xamarin.AndroidX.MultiDex.dll => 0x1da5dd539d8acbb9 => 40
	i64 2165725771938924357, ; 20: Xamarin.AndroidX.Browser => 0x1e0e341d75540745 => 20
	i64 2262844636196693701, ; 21: Xamarin.AndroidX.DrawerLayout.dll => 0x1f673d352266e6c5 => 28
	i64 2284400282711631002, ; 22: System.Web.Services => 0x1fb3d1f42fd4249a => 11
	i64 2329709569556905518, ; 23: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x2054ca829b447e2e => 34
	i64 2470498323731680442, ; 24: Xamarin.AndroidX.CoordinatorLayout => 0x2248f922dc398cba => 23
	i64 2479423007379663237, ; 25: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x2268ae16b2cba985 => 47
	i64 2497223385847772520, ; 26: System.Runtime => 0x22a7eb7046413568 => 10
	i64 2547086958574651984, ; 27: Xamarin.AndroidX.Activity.dll => 0x2359121801df4a50 => 13
	i64 2592350477072141967, ; 28: System.Xml.dll => 0x23f9e10627330e8f => 12
	i64 2624866290265602282, ; 29: mscorlib.dll => 0x246d65fbde2db8ea => 3
	i64 3017704767998173186, ; 30: Xamarin.Google.Android.Material => 0x29e10a7f7d88a002 => 52
	i64 3289520064315143713, ; 31: Xamarin.AndroidX.Lifecycle.Common => 0x2da6b911e3063621 => 33
	i64 3311221304742556517, ; 32: System.Numerics.Vectors.dll => 0x2df3d23ba9e2b365 => 9
	i64 3522470458906976663, ; 33: Xamarin.AndroidX.SwipeRefreshLayout => 0x30e2543832f52197 => 45
	i64 3531994851595924923, ; 34: System.Numerics => 0x31042a9aade235bb => 8
	i64 3571415421602489686, ; 35: System.Runtime.dll => 0x319037675df7e556 => 10
	i64 3727469159507183293, ; 36: Xamarin.AndroidX.RecyclerView => 0x33baa1739ba646bd => 42
	i64 4636684751163556186, ; 37: Xamarin.AndroidX.VersionedParcelable.dll => 0x4058d0370893015a => 49
	i64 4782108999019072045, ; 38: Xamarin.AndroidX.AsyncLayoutInflater.dll => 0x425d76cc43bb0a2d => 19
	i64 4794310189461587505, ; 39: Xamarin.AndroidX.Activity => 0x4288cfb749e4c631 => 13
	i64 4795410492532947900, ; 40: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0x428cb86f8f9b7bbc => 45
	i64 5203618020066742981, ; 41: Xamarin.Essentials => 0x4836f704f0e652c5 => 51
	i64 5205316157927637098, ; 42: Xamarin.AndroidX.LocalBroadcastManager => 0x483cff7778e0c06a => 39
	i64 5376510917114486089, ; 43: Xamarin.AndroidX.VectorDrawable.Animated => 0x4a9d3431719e5d49 => 47
	i64 5408338804355907810, ; 44: Xamarin.AndroidX.Transition => 0x4b0e477cea9840e2 => 46
	i64 5507995362134886206, ; 45: System.Core.dll => 0x4c705499688c873e => 4
	i64 6319713645133255417, ; 46: Xamarin.AndroidX.Lifecycle.Runtime => 0x57b42213b45b52f9 => 35
	i64 6401687960814735282, ; 47: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0x58d75d486341cfb2 => 34
	i64 6504860066809920875, ; 48: Xamarin.AndroidX.Browser.dll => 0x5a45e7c43bd43d6b => 20
	i64 6548213210057960872, ; 49: Xamarin.AndroidX.CustomView.dll => 0x5adfed387b066da8 => 26
	i64 6591024623626361694, ; 50: System.Web.Services.dll => 0x5b7805f9751a1b5e => 11
	i64 6659513131007730089, ; 51: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0x5c6b57e8b6c3e1a9 => 31
	i64 6894844156784520562, ; 52: System.Numerics.Vectors => 0x5faf683aead1ad72 => 9
	i64 7075319800054172261, ; 53: System.EnterpriseServices => 0x623095df1a844a65 => 7
	i64 7103753931438454322, ; 54: Xamarin.AndroidX.Interpolator.dll => 0x62959a90372c7632 => 30
	i64 7301981987038374982, ; 55: FinalExam => 0x6555d9edfdb92c46 => 0
	i64 7637365915383206639, ; 56: Xamarin.Essentials.dll => 0x69fd5fd5e61792ef => 51
	i64 7654504624184590948, ; 57: System.Net.Http => 0x6a3a4366801b8264 => 54
	i64 7820441508502274321, ; 58: System.Data => 0x6c87ca1e14ff8111 => 5
	i64 7836164640616011524, ; 59: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x6cbfa6390d64d704 => 15
	i64 8044118961405839122, ; 60: System.ComponentModel.Composition => 0x6fa2739369944712 => 58
	i64 8083354569033831015, ; 61: Xamarin.AndroidX.Lifecycle.Common.dll => 0x702dd82730cad267 => 33
	i64 8167236081217502503, ; 62: Java.Interop.dll => 0x7157d9f1a9b8fd27 => 1
	i64 8601935802264776013, ; 63: Xamarin.AndroidX.Transition.dll => 0x7760370982b4ed4d => 46
	i64 8626175481042262068, ; 64: Java.Interop => 0x77b654e585b55834 => 1
	i64 9324707631942237306, ; 65: Xamarin.AndroidX.AppCompat => 0x8168042fd44a7c7a => 16
	i64 9662334977499516867, ; 66: System.Numerics.dll => 0x8617827802b0cfc3 => 8
	i64 9678050649315576968, ; 67: Xamarin.AndroidX.CoordinatorLayout.dll => 0x864f57c9feb18c88 => 23
	i64 9808709177481450983, ; 68: Mono.Android.dll => 0x881f890734e555e7 => 2
	i64 9834056768316610435, ; 69: System.Transactions.dll => 0x8879968718899783 => 56
	i64 9998632235833408227, ; 70: Mono.Security => 0x8ac2470b209ebae3 => 57
	i64 10038780035334861115, ; 71: System.Net.Http.dll => 0x8b50e941206af13b => 54
	i64 10229024438826829339, ; 72: Xamarin.AndroidX.CustomView => 0x8df4cb880b10061b => 26
	i64 10430153318873392755, ; 73: Xamarin.AndroidX.Core => 0x90bf592ea44f6673 => 24
	i64 10847732767863316357, ; 74: Xamarin.AndroidX.Arch.Core.Common => 0x968ae37a86db9f85 => 17
	i64 11023048688141570732, ; 75: System.Core => 0x98f9bc61168392ac => 4
	i64 11037814507248023548, ; 76: System.Xml => 0x992e31d0412bf7fc => 12
	i64 11162124722117608902, ; 77: Xamarin.AndroidX.ViewPager => 0x9ae7d54b986d05c6 => 50
	i64 11340910727871153756, ; 78: Xamarin.AndroidX.CursorAdapter => 0x9d630238642d465c => 25
	i64 11392833485892708388, ; 79: Xamarin.AndroidX.Print.dll => 0x9e1b79b18fcf6824 => 41
	i64 11529969570048099689, ; 80: Xamarin.AndroidX.ViewPager.dll => 0xa002ae3c4dc7c569 => 50
	i64 11580057168383206117, ; 81: Xamarin.AndroidX.Annotation => 0xa0b4a0a4103262e5 => 14
	i64 11672361001936329215, ; 82: Xamarin.AndroidX.Interpolator => 0xa1fc8e7d0a8999ff => 30
	i64 12137774235383566651, ; 83: Xamarin.AndroidX.VectorDrawable => 0xa872095bbfed113b => 48
	i64 12451044538927396471, ; 84: Xamarin.AndroidX.Fragment.dll => 0xaccaff0a2955b677 => 29
	i64 12466513435562512481, ; 85: Xamarin.AndroidX.Loader.dll => 0xad01f3eb52569061 => 38
	i64 12487638416075308985, ; 86: Xamarin.AndroidX.DocumentFile.dll => 0xad4d00fa21b0bfb9 => 27
	i64 12538491095302438457, ; 87: Xamarin.AndroidX.CardView.dll => 0xae01ab382ae67e39 => 21
	i64 12700543734426720211, ; 88: Xamarin.AndroidX.Collection => 0xb041653c70d157d3 => 22
	i64 12963446364377008305, ; 89: System.Drawing.Common.dll => 0xb3e769c8fd8548b1 => 55
	i64 13401370062847626945, ; 90: Xamarin.AndroidX.VectorDrawable.dll => 0xb9fb3b1193964ec1 => 48
	i64 13401827995531289705, ; 91: System.EnterpriseServices.dll => 0xb9fcdb8e56872469 => 7
	i64 13454009404024712428, ; 92: Xamarin.Google.Guava.ListenableFuture => 0xbab63e4543a86cec => 53
	i64 13491513212026656886, ; 93: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0xbb3b7bc905569876 => 18
	i64 13572454107664307259, ; 94: Xamarin.AndroidX.RecyclerView.dll => 0xbc5b0b19d99f543b => 42
	i64 13647894001087880694, ; 95: System.Data.dll => 0xbd670f48cb071df6 => 5
	i64 13959074834287824816, ; 96: Xamarin.AndroidX.Fragment => 0xc1b8989a7ad20fb0 => 29
	i64 14124974489674258913, ; 97: Xamarin.AndroidX.CardView => 0xc405fd76067d19e1 => 21
	i64 14172845254133543601, ; 98: Xamarin.AndroidX.MultiDex => 0xc4b00faaed35f2b1 => 40
	i64 14261073672896646636, ; 99: Xamarin.AndroidX.Print => 0xc5e982f274ae0dec => 41
	i64 14286579540758554560, ; 100: FinalExam.dll => 0xc64420661646e7c0 => 0
	i64 14644440854989303794, ; 101: Xamarin.AndroidX.LocalBroadcastManager.dll => 0xcb3b815e37daeff2 => 39
	i64 14792063746108907174, ; 102: Xamarin.Google.Guava.ListenableFuture.dll => 0xcd47f79af9c15ea6 => 53
	i64 14852515768018889994, ; 103: Xamarin.AndroidX.CursorAdapter.dll => 0xce1ebc6625a76d0a => 25
	i64 14988210264188246988, ; 104: Xamarin.AndroidX.DocumentFile => 0xd000d1d307cddbcc => 27
	i64 15370334346939861994, ; 105: Xamarin.AndroidX.Core.dll => 0xd54e65a72c560bea => 24
	i64 15582737692548360875, ; 106: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xd841015ed86f6aab => 37
	i64 15609085926864131306, ; 107: System.dll => 0xd89e9cf3334914ea => 6
	i64 15777549416145007739, ; 108: Xamarin.AndroidX.SlidingPaneLayout.dll => 0xdaf51d99d77eb47b => 44
	i64 16154507427712707110, ; 109: System => 0xe03056ea4e39aa26 => 6
	i64 16565028646146589191, ; 110: System.ComponentModel.Composition.dll => 0xe5e2cdc9d3bcc207 => 58
	i64 16833383113903931215, ; 111: mscorlib => 0xe99c30c1484d7f4f => 3
	i64 17037200463775726619, ; 112: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xec704b8e0a78fc1b => 32
	i64 17544493274320527064, ; 113: Xamarin.AndroidX.AsyncLayoutInflater => 0xf37a8fada41aded8 => 19
	i64 17704177640604968747, ; 114: Xamarin.AndroidX.Loader => 0xf5b1dfc36cac272b => 38
	i64 17710060891934109755, ; 115: Xamarin.AndroidX.Lifecycle.ViewModel => 0xf5c6c68c9e45303b => 36
	i64 18116111925905154859, ; 116: Xamarin.AndroidX.Arch.Core.Runtime => 0xfb695bd036cb632b => 18
	i64 18380184030268848184 ; 117: Xamarin.AndroidX.VersionedParcelable => 0xff1387fe3e7b7838 => 49
], align 8
@assembly_image_cache_indices = local_unnamed_addr constant [118 x i32] [
	i32 2, i32 22, i32 43, i32 44, i32 35, i32 55, i32 31, i32 28, ; 0..7
	i32 56, i32 57, i32 52, i32 17, i32 15, i32 37, i32 32, i32 16, ; 8..15
	i32 43, i32 14, i32 36, i32 40, i32 20, i32 28, i32 11, i32 34, ; 16..23
	i32 23, i32 47, i32 10, i32 13, i32 12, i32 3, i32 52, i32 33, ; 24..31
	i32 9, i32 45, i32 8, i32 10, i32 42, i32 49, i32 19, i32 13, ; 32..39
	i32 45, i32 51, i32 39, i32 47, i32 46, i32 4, i32 35, i32 34, ; 40..47
	i32 20, i32 26, i32 11, i32 31, i32 9, i32 7, i32 30, i32 0, ; 48..55
	i32 51, i32 54, i32 5, i32 15, i32 58, i32 33, i32 1, i32 46, ; 56..63
	i32 1, i32 16, i32 8, i32 23, i32 2, i32 56, i32 57, i32 54, ; 64..71
	i32 26, i32 24, i32 17, i32 4, i32 12, i32 50, i32 25, i32 41, ; 72..79
	i32 50, i32 14, i32 30, i32 48, i32 29, i32 38, i32 27, i32 21, ; 80..87
	i32 22, i32 55, i32 48, i32 7, i32 53, i32 18, i32 42, i32 5, ; 88..95
	i32 29, i32 21, i32 40, i32 41, i32 0, i32 39, i32 53, i32 25, ; 96..103
	i32 27, i32 24, i32 37, i32 6, i32 44, i32 6, i32 58, i32 3, ; 104..111
	i32 32, i32 19, i32 38, i32 36, i32 18, i32 49 ; 112..117
], align 4

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 8; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 8

; Function attributes: "frame-pointer"="non-leaf" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics" uwtable willreturn writeonly
define void @xamarin_app_init (void (i32, i32, i32, i8**)* %fn) local_unnamed_addr #0
{
	store void (i32, i32, i32, i8**)* %fn, void (i32, i32, i32, i8**)** @get_function_pointer, align 8
	ret void
}

; Names of classes in which marshal methods reside
@mm_class_names = local_unnamed_addr constant [0 x i8*] zeroinitializer, align 8
@__MarshalMethodName_name.0 = internal constant [1 x i8] c"\00", align 1

; mm_method_names
@mm_method_names = local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	; 0
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		i8* getelementptr inbounds ([1 x i8], [1 x i8]* @__MarshalMethodName_name.0, i32 0, i32 0); name
	}
], align 8; end of 'mm_method_names' array


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="non-leaf" "target-cpu"="generic" "target-features"="+neon,+outline-atomics" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="non-leaf" "target-cpu"="generic" "target-features"="+neon,+outline-atomics" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, !"branch-target-enforcement", i32 0}
!3 = !{i32 1, !"sign-return-address", i32 0}
!4 = !{i32 1, !"sign-return-address-all", i32 0}
!5 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!6 = !{!"Xamarin.Android remotes/origin/d17-5 @ a200af12c1e846626b8caebd926ac14c185f71ec"}
!llvm.linker.options = !{}
