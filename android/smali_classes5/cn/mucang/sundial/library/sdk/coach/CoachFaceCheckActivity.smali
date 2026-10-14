.class public final Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;
.super Lcn/mucang/sundial/library/sdk/coach/TopBaseActivity;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0096\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0010\u0008\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0011\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008r\u0010\u0007J\u000f\u0010\u0003\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u000f\u0010\u0008\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\u0007J\u000f\u0010\t\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\t\u0010\u0007J\u000f\u0010\n\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\n\u0010\u0007J7\u0010\u0011\u001a\u00020\u00052\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u000b2\u0006\u0010\u0010\u001a\u00020\u000bH\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J#\u0010\u0016\u001a\u00020\u00052\u0006\u0010\u0014\u001a\u00020\u00132\n\u0008\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u000bH\u0002\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u000f\u0010\u0018\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0018\u0010\u0007J\u000f\u0010\u0019\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0019\u0010\u0007J\u000f\u0010\u001a\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u001a\u0010\u0007J\u000f\u0010\u001b\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u001b\u0010\u0007J\u000f\u0010\u001c\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u001c\u0010\u0004J\u000f\u0010\u001d\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u001d\u0010\u0004J\u0017\u0010 \u001a\u00020\u001f2\u0006\u0010\u001e\u001a\u00020\u000bH\u0003\u00a2\u0006\u0004\u0008 \u0010!J\u0017\u0010$\u001a\u00020\u00052\u0006\u0010#\u001a\u00020\"H\u0002\u00a2\u0006\u0004\u0008$\u0010%J\u0017\u0010$\u001a\u00020\u00052\u0006\u0010&\u001a\u00020\u001fH\u0003\u00a2\u0006\u0004\u0008$\u0010\'J\u0017\u0010(\u001a\u00020\u00052\u0006\u0010\u0015\u001a\u00020\u000bH\u0002\u00a2\u0006\u0004\u0008(\u0010)J\u000f\u0010*\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008*\u0010\u0007J\u0017\u0010,\u001a\u00020\u00052\u0006\u0010+\u001a\u00020\u0013H\u0002\u00a2\u0006\u0004\u0008,\u0010-J\u0017\u0010.\u001a\u00020\u00052\u0006\u0010+\u001a\u00020\u0013H\u0002\u00a2\u0006\u0004\u0008.\u0010-J\u000f\u0010/\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008/\u0010\u0007J\u000f\u00100\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u00080\u0010\u0007J\u000f\u00101\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u00081\u0010\u0007J\u0019\u00105\u001a\u0002042\u0008\u00103\u001a\u0004\u0018\u000102H\u0016\u00a2\u0006\u0004\u00085\u00106J\u000f\u00107\u001a\u00020\u0005H\u0014\u00a2\u0006\u0004\u00087\u0010\u0007J\u000f\u00108\u001a\u00020\u0005H\u0014\u00a2\u0006\u0004\u00088\u0010\u0007J\u000f\u00109\u001a\u00020\u0005H\u0014\u00a2\u0006\u0004\u00089\u0010\u0007R\u0016\u0010:\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008:\u0010;R\u0016\u0010<\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008<\u0010;R\u0016\u0010=\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008=\u0010;R\u0016\u0010>\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008>\u0010;R\u001d\u0010D\u001a\u00020?8B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008@\u0010A\u001a\u0004\u0008B\u0010CR\u0016\u0010F\u001a\u00020E8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008F\u0010GR\u0016\u0010H\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008H\u0010IR\u0016\u0010J\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008J\u0010IR\u001c\u0010L\u001a\u0008\u0012\u0004\u0012\u00020\u00130K8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008L\u0010MR\u0018\u0010N\u001a\u0004\u0018\u00010\"8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008N\u0010OR\u001d\u0010T\u001a\u00020P8B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008Q\u0010A\u001a\u0004\u0008R\u0010SR\u0018\u0010V\u001a\u0004\u0018\u00010U8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008V\u0010WR\u0018\u0010Y\u001a\u0004\u0018\u00010X8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008Y\u0010ZR\u0016\u0010[\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008[\u0010;R\u0016\u0010\\\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\\\u0010IR\u0018\u0010^\u001a\u0004\u0018\u00010]8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008^\u0010_R\u0016\u0010`\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008`\u0010;R\u0018\u0010b\u001a\u0004\u0018\u00010a8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008b\u0010cR\u0016\u0010d\u001a\u00020E8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008d\u0010GR\u0016\u0010e\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008e\u0010;R\u0018\u0010f\u001a\u0004\u0018\u00010U8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008f\u0010WR\u0016\u0010g\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008g\u0010hR\u0016\u0010i\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008i\u0010;R\u0018\u0010k\u001a\u0004\u0018\u00010j8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008k\u0010lR\u0016\u0010m\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008m\u0010IR\u0016\u0010o\u001a\u00020n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008o\u0010pR\u0016\u0010q\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008q\u0010h\u00a8\u0006s"
    }
    d2 = {
        "Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;",
        "Lcn/mucang/sundial/library/sdk/coach/TopBaseActivity;",
        "",
        "checkCamera",
        "()Z",
        "Lkotlin/v;",
        "observeForLoginLogoutIfNeed",
        "()V",
        "signInOutSuccess",
        "initUVCCamera",
        "updateTitle",
        "",
        "nameStr",
        "avatarStr",
        "idCard",
        "driveType",
        "filingNo",
        "updateView",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "",
        "code",
        "msg",
        "handleUploadImageResult",
        "(ILjava/lang/String;)V",
        "toLoginOrLogout",
        "showErrorLayout",
        "showCompleteLayout",
        "speakToTakePhoto",
        "isLogin",
        "isLogout",
        "path",
        "Lcn/mucang/sundial/android/db/entity/PhotoRecord;",
        "createPhotoRecord",
        "(Ljava/lang/String;)Lcn/mucang/sundial/android/db/entity/PhotoRecord;",
        "Ljava/io/File;",
        "file",
        "uploadImage",
        "(Ljava/io/File;)V",
        "photoRecord",
        "(Lcn/mucang/sundial/android/db/entity/PhotoRecord;)V",
        "toastCustomMsg",
        "(Ljava/lang/String;)V",
        "takePhoto",
        "delay",
        "startCountDown",
        "(I)V",
        "startCountDownUpload",
        "cancelCountDown",
        "initData",
        "initViewModel",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "Landroid/view/View;",
        "onCreateView",
        "(Landroid/os/Bundle;)Landroid/view/View;",
        "onResume",
        "onPause",
        "onDestroy",
        "courseSubject",
        "I",
        "checkMode",
        "personMode",
        "eventType",
        "Lcn/mucang/sundial/library/databinding/TtActivityCoachFaceCheckBinding;",
        "binding$delegate",
        "Lkotlin/f;",
        "getBinding",
        "()Lcn/mucang/sundial/library/databinding/TtActivityCoachFaceCheckBinding;",
        "binding",
        "Ljava/lang/Runnable;",
        "autoFinishTask",
        "Ljava/lang/Runnable;",
        "xyToken",
        "Ljava/lang/String;",
        "idNum",
        "",
        "fiveDownTimer",
        "[Ljava/lang/Integer;",
        "imageFile",
        "Ljava/io/File;",
        "Lcn/mucang/sundial/library/viewmodel/FaceCheckActivityViewModel;",
        "viewModel$delegate",
        "getViewModel",
        "()Lcn/mucang/sundial/library/viewmodel/FaceCheckActivityViewModel;",
        "viewModel",
        "Landroid/os/CountDownTimer;",
        "uploadCountDownTimer",
        "Landroid/os/CountDownTimer;",
        "Lcn/mucang/sundial/library/widget/BlankDialog;",
        "blankDialog",
        "Lcn/mucang/sundial/library/widget/BlankDialog;",
        "uploadMode",
        "uploadPhotoId",
        "Lcn/mucang/sundial/library/device/BaseCamera;",
        "cameraUtil",
        "Lcn/mucang/sundial/library/device/BaseCamera;",
        "wavCamera",
        "Landroid/media/SoundPool;",
        "soundPool",
        "Landroid/media/SoundPool;",
        "checkCameraTask",
        "streamId",
        "voiceCountDownTimer",
        "hasPermission",
        "Z",
        "wavTimer",
        "Lcn/mucang/sundial/library/device/CameraResult;",
        "cameraResult",
        "Lcn/mucang/sundial/library/device/CameraResult;",
        "authToken",
        "",
        "startTime",
        "J",
        "takePictureWhenGetInfo",
        "<init>",
        "library_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field private authToken:Ljava/lang/String;

.field private final autoFinishTask:Ljava/lang/Runnable;

.field private final binding$delegate:Lkotlin/f;

.field private blankDialog:Lcn/mucang/sundial/library/widget/BlankDialog;

.field private cameraResult:Lcn/mucang/sundial/library/device/CameraResult;

.field private cameraUtil:Lcn/mucang/sundial/library/device/BaseCamera;

.field private final checkCameraTask:Ljava/lang/Runnable;

.field private checkMode:I

.field private courseSubject:I

.field private eventType:I

.field private fiveDownTimer:[Ljava/lang/Integer;

.field private hasPermission:Z

.field private idNum:Ljava/lang/String;

.field private imageFile:Ljava/io/File;

.field private personMode:I

.field private soundPool:Landroid/media/SoundPool;

.field private startTime:J

.field private streamId:I

.field private takePictureWhenGetInfo:Z

.field private uploadCountDownTimer:Landroid/os/CountDownTimer;

.field private uploadMode:I

.field private uploadPhotoId:Ljava/lang/String;

.field private final viewModel$delegate:Lkotlin/f;

.field private voiceCountDownTimer:Landroid/os/CountDownTimer;

.field private wavCamera:I

.field private wavTimer:I

.field private xyToken:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, Lcn/mucang/sundial/library/sdk/coach/TopBaseActivity;-><init>()V

    .line 2
    new-instance v0, Lf/a/a/a/u/d;

    const-class v1, Lcn/mucang/sundial/library/databinding/TtActivityCoachFaceCheckBinding;

    new-instance v2, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity$$special$$inlined$viewBinding$1;

    invoke-direct {v2, p0}, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity$$special$$inlined$viewBinding$1;-><init>(Landroid/app/Activity;)V

    invoke-direct {v0, v1, v2}, Lf/a/a/a/u/d;-><init>(Ljava/lang/Class;Lf/a/a/a/u/d$a;)V

    iput-object v0, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->binding$delegate:Lkotlin/f;

    .line 3
    new-instance v0, Lcn/mucang/sundial/library/sdk/coach/TopBaseActivity$vm$1;

    invoke-direct {v0, p0}, Lcn/mucang/sundial/library/sdk/coach/TopBaseActivity$vm$1;-><init>(Lcn/mucang/sundial/library/sdk/coach/TopBaseActivity;)V

    .line 4
    new-instance v1, Landroidx/lifecycle/l0;

    const-class v2, Lcn/mucang/sundial/library/viewmodel/FaceCheckActivityViewModel;

    invoke-static {v2}, Lkotlin/jvm/internal/v;->b(Ljava/lang/Class;)Lkotlin/reflect/d;

    move-result-object v2

    new-instance v3, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity$vm$$inlined$viewModels$2;

    invoke-direct {v3, p0}, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity$vm$$inlined$viewModels$2;-><init>(Landroidx/activity/ComponentActivity;)V

    invoke-direct {v1, v2, v3, v0}, Landroidx/lifecycle/l0;-><init>(Lkotlin/reflect/d;Lkotlin/jvm/b/a;Lkotlin/jvm/b/a;)V

    .line 5
    iput-object v1, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->viewModel$delegate:Lkotlin/f;

    .line 6
    sget-object v0, Lcn/mucang/sundial/android/PersonMode;->NONE:Lcn/mucang/sundial/android/PersonMode;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iput v0, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->personMode:I

    .line 7
    sget-object v0, Lcn/mucang/sundial/library/entity/CheckMode;->OTHER:Lcn/mucang/sundial/library/entity/CheckMode;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iput v0, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->checkMode:I

    .line 8
    sget-object v0, Lcn/mucang/sundial/android/tcp/upload/EventType;->STUDENT_TRAINING:Lcn/mucang/sundial/android/tcp/upload/EventType;

    invoke-virtual {v0}, Lcn/mucang/sundial/android/tcp/upload/EventType;->valueOf()I

    move-result v0

    iput v0, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->eventType:I

    .line 9
    sget-object v0, Lcn/mucang/sundial/android/tcp/upload/UploadMode;->TERMINAL_TAKE:Lcn/mucang/sundial/android/tcp/upload/UploadMode;

    invoke-virtual {v0}, Lcn/mucang/sundial/android/tcp/upload/UploadMode;->valueOf()I

    move-result v0

    iput v0, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->uploadMode:I

    const-string v0, ""

    .line 10
    iput-object v0, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->idNum:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->authToken:Ljava/lang/String;

    .line 12
    iput-object v0, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->xyToken:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->uploadPhotoId:Ljava/lang/String;

    const/4 v0, 0x5

    new-array v1, v0, [Ljava/lang/Integer;

    const/4 v2, 0x0

    .line 14
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v2

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v1, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    iput-object v1, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->fiveDownTimer:[Ljava/lang/Integer;

    .line 15
    new-instance v0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity$checkCameraTask$1;

    invoke-direct {v0, p0}, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity$checkCameraTask$1;-><init>(Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;)V

    iput-object v0, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->checkCameraTask:Ljava/lang/Runnable;

    .line 16
    new-instance v0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity$autoFinishTask$1;

    invoke-direct {v0, p0}, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity$autoFinishTask$1;-><init>(Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;)V

    iput-object v0, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->autoFinishTask:Ljava/lang/Runnable;

    return-void
.end method

.method public static final synthetic access$cancelCountDown(Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->cancelCountDown()V

    return-void
.end method

.method public static final synthetic access$checkCamera(Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->checkCamera()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$createPhotoRecord(Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;Ljava/lang/String;)Lcn/mucang/sundial/android/db/entity/PhotoRecord;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->createPhotoRecord(Ljava/lang/String;)Lcn/mucang/sundial/android/db/entity/PhotoRecord;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getBinding$p(Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;)Lcn/mucang/sundial/library/databinding/TtActivityCoachFaceCheckBinding;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->getBinding()Lcn/mucang/sundial/library/databinding/TtActivityCoachFaceCheckBinding;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getBlankDialog$p(Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;)Lcn/mucang/sundial/library/widget/BlankDialog;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->blankDialog:Lcn/mucang/sundial/library/widget/BlankDialog;

    return-object p0
.end method

.method public static final synthetic access$getCameraUtil$p(Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;)Lcn/mucang/sundial/library/device/BaseCamera;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->cameraUtil:Lcn/mucang/sundial/library/device/BaseCamera;

    return-object p0
.end method

.method public static final synthetic access$getCheckCameraTask$p(Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->checkCameraTask:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static final synthetic access$getCheckMode$p(Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->checkMode:I

    return p0
.end method

.method public static final synthetic access$getFiveDownTimer$p(Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;)[Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->fiveDownTimer:[Ljava/lang/Integer;

    return-object p0
.end method

.method public static final synthetic access$getHasPermission$p(Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->hasPermission:Z

    return p0
.end method

.method public static final synthetic access$getImageFile$p(Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;)Ljava/io/File;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->imageFile:Ljava/io/File;

    return-object p0
.end method

.method public static final synthetic access$getPersonMode$p(Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->personMode:I

    return p0
.end method

.method public static final synthetic access$getSoundPool$p(Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;)Landroid/media/SoundPool;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->soundPool:Landroid/media/SoundPool;

    return-object p0
.end method

.method public static final synthetic access$getStartTime$p(Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->startTime:J

    return-wide v0
.end method

.method public static final synthetic access$getStreamId$p(Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->streamId:I

    return p0
.end method

.method public static final synthetic access$getTakePictureWhenGetInfo$p(Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->takePictureWhenGetInfo:Z

    return p0
.end method

.method public static final synthetic access$getUploadMode$p(Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->uploadMode:I

    return p0
.end method

.method public static final synthetic access$getUploadPhotoId$p(Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->uploadPhotoId:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getViewModel$p(Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;)Lcn/mucang/sundial/library/viewmodel/FaceCheckActivityViewModel;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->getViewModel()Lcn/mucang/sundial/library/viewmodel/FaceCheckActivityViewModel;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getWavCamera$p(Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->wavCamera:I

    return p0
.end method

.method public static final synthetic access$getWavTimer$p(Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->wavTimer:I

    return p0
.end method

.method public static final synthetic access$handleUploadImageResult(Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->handleUploadImageResult(ILjava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$isLogin(Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->isLogin()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$isLogout(Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->isLogout()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$setBlankDialog$p(Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;Lcn/mucang/sundial/library/widget/BlankDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->blankDialog:Lcn/mucang/sundial/library/widget/BlankDialog;

    return-void
.end method

.method public static final synthetic access$setCameraUtil$p(Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;Lcn/mucang/sundial/library/device/BaseCamera;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->cameraUtil:Lcn/mucang/sundial/library/device/BaseCamera;

    return-void
.end method

.method public static final synthetic access$setCheckMode$p(Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->checkMode:I

    return-void
.end method

.method public static final synthetic access$setFiveDownTimer$p(Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;[Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->fiveDownTimer:[Ljava/lang/Integer;

    return-void
.end method

.method public static final synthetic access$setHasPermission$p(Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->hasPermission:Z

    return-void
.end method

.method public static final synthetic access$setImageFile$p(Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;Ljava/io/File;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->imageFile:Ljava/io/File;

    return-void
.end method

.method public static final synthetic access$setPersonMode$p(Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->personMode:I

    return-void
.end method

.method public static final synthetic access$setSoundPool$p(Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;Landroid/media/SoundPool;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->soundPool:Landroid/media/SoundPool;

    return-void
.end method

.method public static final synthetic access$setStartTime$p(Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->startTime:J

    return-void
.end method

.method public static final synthetic access$setStreamId$p(Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->streamId:I

    return-void
.end method

.method public static final synthetic access$setTakePictureWhenGetInfo$p(Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->takePictureWhenGetInfo:Z

    return-void
.end method

.method public static final synthetic access$setUploadMode$p(Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->uploadMode:I

    return-void
.end method

.method public static final synthetic access$setUploadPhotoId$p(Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->uploadPhotoId:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setWavCamera$p(Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->wavCamera:I

    return-void
.end method

.method public static final synthetic access$setWavTimer$p(Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->wavTimer:I

    return-void
.end method

.method public static final synthetic access$showCompleteLayout(Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->showCompleteLayout()V

    return-void
.end method

.method public static final synthetic access$showErrorLayout(Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->showErrorLayout()V

    return-void
.end method

.method public static final synthetic access$signInOutSuccess(Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->signInOutSuccess()V

    return-void
.end method

.method public static final synthetic access$speakToTakePhoto(Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->speakToTakePhoto()V

    return-void
.end method

.method public static final synthetic access$startCountDown(Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->startCountDown(I)V

    return-void
.end method

.method public static final synthetic access$startCountDownUpload(Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->startCountDownUpload(I)V

    return-void
.end method

.method public static final synthetic access$takePhoto(Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->takePhoto()V

    return-void
.end method

.method public static final synthetic access$toLoginOrLogout(Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->toLoginOrLogout()V

    return-void
.end method

.method public static final synthetic access$toastCustomMsg(Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->toastCustomMsg(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$updateView(Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->updateView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$uploadImage(Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;Lcn/mucang/sundial/android/db/entity/PhotoRecord;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->uploadImage(Lcn/mucang/sundial/android/db/entity/PhotoRecord;)V

    return-void
.end method

.method public static final synthetic access$uploadImage(Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;Ljava/io/File;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->uploadImage(Ljava/io/File;)V

    return-void
.end method

.method private final cancelCountDown()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->getBinding()Lcn/mucang/sundial/library/databinding/TtActivityCoachFaceCheckBinding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/sundial/library/databinding/TtActivityCoachFaceCheckBinding;->tvHint:Landroid/widget/TextView;

    const-string v1, "binding.tvHint"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->voiceCountDownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->uploadCountDownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    :cond_1
    return-void
.end method

.method private final checkCamera()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->cameraUtil:Lcn/mucang/sundial/library/device/BaseCamera;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcn/mucang/sundial/library/device/TtCamera;->cameraCount()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-lez v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    if-nez v1, :cond_3

    .line 3
    invoke-virtual {p0}, Landroidx/appcompat/app/d;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcn/mucang/sundial/library/R$string;->tt_voice_face_check_fail_no_camera:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/sundial/android/log/SundialLog;->normal(Ljava/lang/Object;)V

    .line 4
    invoke-static {v2}, Lcn/mucang/android/core/utils/u;->g(I)V

    .line 5
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "getString(R.string.tt_vo\u2026ace_check_fail_no_camera)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3}, Lcn/mucang/sundial/library/tts/Tts;->speak$default(Ljava/lang/String;Lcn/mucang/sundial/library/tts/SpeakListener;ILjava/lang/Object;)V

    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_3
    return v1
.end method

.method private final createPhotoRecord(Ljava/lang/String;)Lcn/mucang/sundial/android/db/entity/PhotoRecord;
    .locals 16

    move-object/from16 v0, p0

    .line 1
    invoke-direct/range {p0 .. p0}, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->getViewModel()Lcn/mucang/sundial/library/viewmodel/FaceCheckActivityViewModel;

    move-result-object v1

    invoke-virtual {v1}, Lcn/mucang/sundial/library/viewmodel/FaceCheckActivityViewModel;->getCoachInfoData()Lcn/mucang/sundial/android/db/entity/CoachInfo;

    move-result-object v1

    const-string v2, "SundialManager.getInstance()"

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcn/mucang/sundial/android/SundialManager;->getInstance()Lcn/mucang/sundial/android/SundialManager;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcn/mucang/sundial/android/SundialManager;->getLastCoach()Lcn/mucang/sundial/android/db/entity/CoachInfo;

    move-result-object v1

    .line 2
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->getViewModel()Lcn/mucang/sundial/library/viewmodel/FaceCheckActivityViewModel;

    move-result-object v3

    invoke-virtual {v3}, Lcn/mucang/sundial/library/viewmodel/FaceCheckActivityViewModel;->getStudentInfoData()Lcn/mucang/sundial/android/db/entity/StudentInfo;

    move-result-object v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {}, Lcn/mucang/sundial/android/SundialManager;->getInstance()Lcn/mucang/sundial/android/SundialManager;

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcn/mucang/sundial/android/SundialManager;->getLastStudent()Lcn/mucang/sundial/android/db/entity/StudentInfo;

    move-result-object v3

    .line 3
    :goto_1
    iget v2, v0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->personMode:I

    sget-object v4, Lcn/mucang/sundial/android/PersonMode;->COACH:Lcn/mucang/sundial/android/PersonMode;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const-string v5, ""

    const-wide/16 v6, 0x0

    if-ne v2, v4, :cond_3

    if-eqz v1, :cond_2

    .line 4
    invoke-virtual {v1}, Lcn/mucang/sundial/android/db/entity/CoachInfo;->getCoachNo()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    move-object v5, v1

    :cond_2
    :goto_2
    move-object v9, v5

    move-wide v10, v6

    goto :goto_5

    :cond_3
    if-eqz v3, :cond_4

    .line 5
    invoke-virtual {v3}, Lcn/mucang/sundial/android/db/entity/StudentInfo;->getStudentNo()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    move-object v5, v1

    :cond_4
    if-eqz v3, :cond_5

    .line 6
    invoke-virtual {v3}, Lcn/mucang/sundial/android/db/entity/StudentInfo;->getClassroomId()J

    move-result-wide v1

    goto :goto_3

    :cond_5
    move-wide v1, v6

    :goto_3
    cmp-long v4, v1, v6

    if-lez v4, :cond_7

    .line 7
    iget v4, v0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->eventType:I

    sget-object v6, Lcn/mucang/sundial/android/tcp/upload/EventType;->STUDENT_SIGN_IN:Lcn/mucang/sundial/android/tcp/upload/EventType;

    invoke-virtual {v6}, Lcn/mucang/sundial/android/tcp/upload/EventType;->valueOf()I

    move-result v6

    if-ne v4, v6, :cond_6

    goto :goto_4

    :cond_6
    move-wide v10, v1

    move-object v9, v5

    goto :goto_5

    .line 8
    :cond_7
    :goto_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const/16 v4, 0x3e8

    int-to-long v6, v4

    div-long v6, v1, v6

    if-eqz v3, :cond_2

    .line 9
    invoke-virtual {v3, v6, v7}, Lcn/mucang/sundial/android/db/entity/StudentInfo;->setClassroomId(J)V

    goto :goto_2

    .line 10
    :goto_5
    invoke-static {}, Lcn/mucang/sundial/android/tcp/upload/UploadImageManager;->getInstance()Lcn/mucang/sundial/android/tcp/upload/UploadImageManager;

    move-result-object v8

    .line 11
    iget v12, v0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->uploadMode:I

    iget v13, v0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->eventType:I

    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v1

    const-string v2, "MucangConfig.getContext()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcn/mucang/sundial/library/R$dimen;->tt__text_size_water:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    move-object/from16 v14, p1

    .line 12
    invoke-virtual/range {v8 .. v15}, Lcn/mucang/sundial/android/tcp/upload/UploadImageManager;->createPhotoRecord(Ljava/lang/String;JIILjava/lang/String;I)Lcn/mucang/sundial/android/db/entity/PhotoRecord;

    move-result-object v1

    const-string v2, "UploadImageManager.getIn\u2026ext_size_water)\n        )"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method

.method private final getBinding()Lcn/mucang/sundial/library/databinding/TtActivityCoachFaceCheckBinding;
    .locals 1

    iget-object v0, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->binding$delegate:Lkotlin/f;

    invoke-interface {v0}, Lkotlin/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/sundial/library/databinding/TtActivityCoachFaceCheckBinding;

    return-object v0
.end method

.method private final getViewModel()Lcn/mucang/sundial/library/viewmodel/FaceCheckActivityViewModel;
    .locals 1

    iget-object v0, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->viewModel$delegate:Lkotlin/f;

    invoke-interface {v0}, Lkotlin/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/sundial/library/viewmodel/FaceCheckActivityViewModel;

    return-object v0
.end method

.method private final handleUploadImageResult(ILjava/lang/String;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget v0, Lcn/mucang/sundial/android/tcp/upload/UploadImageResult;->SUCCESS:I

    if-ne p1, v0, :cond_3

    .line 3
    invoke-direct {p0}, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->isLogin()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-direct {p0}, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->isLogout()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    .line 4
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_1

    .line 6
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->toLoginOrLogout()V

    goto/16 :goto_1

    .line 7
    :cond_3
    iget p1, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->checkMode:I

    sget-object v0, Lcn/mucang/sundial/library/entity/CheckMode;->SIGN_IN:Lcn/mucang/sundial/library/entity/CheckMode;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne p1, v0, :cond_7

    if-eqz p2, :cond_4

    .line 8
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_5

    :cond_4
    const/4 v1, 0x1

    :cond_5
    if-eqz v1, :cond_6

    sget p1, Lcn/mucang/sundial/library/R$string;->tt_voice_fail_to_upload_picture:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    :cond_6
    const-string p1, "if (msg.isNullOrEmpty())\u2026_upload_picture) else msg"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v4, v2, v4}, Lcn/mucang/sundial/library/tts/Tts;->speak$default(Ljava/lang/String;Lcn/mucang/sundial/library/tts/SpeakListener;ILjava/lang/Object;)V

    .line 9
    invoke-direct {p0}, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->showErrorLayout()V

    goto :goto_1

    .line 10
    :cond_7
    iget p1, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->checkMode:I

    sget-object v0, Lcn/mucang/sundial/library/entity/CheckMode;->SIGN_OUT:Lcn/mucang/sundial/library/entity/CheckMode;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const-string v5, "if (msg.isNullOrEmpty())\u2026face_check_fail) else msg"

    if-ne p1, v0, :cond_c

    .line 11
    sget-object p1, Lcn/mucang/sundial/library/util/GlobalData;->INSTANCE:Lcn/mucang/sundial/library/util/GlobalData;

    iget v0, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->personMode:I

    invoke-virtual {p1, v0}, Lcn/mucang/sundial/library/util/GlobalData;->incrementSignOutErrorCount(I)V

    .line 12
    iget v0, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->personMode:I

    invoke-virtual {p1, v0}, Lcn/mucang/sundial/library/util/GlobalData;->getSignOutErrorCount(I)I

    move-result p1

    const/4 v0, 0x3

    if-le p1, v0, :cond_8

    const-string p1, "\u4eba\u8138\u9a8c\u8bc1\u5931\u8d25\uff01\u662f\u5426\u5f3a\u5236\u7b7e\u9000\uff1f"

    .line 13
    invoke-static {p1, v4, v2, v4}, Lcn/mucang/sundial/library/tts/Tts;->speak$default(Ljava/lang/String;Lcn/mucang/sundial/library/tts/SpeakListener;ILjava/lang/Object;)V

    .line 14
    new-instance p1, Lcn/mucang/sundial/library/widget/FaceCheckFailDialog$Builder;

    invoke-direct {p1, p0, v3}, Lcn/mucang/sundial/library/widget/FaceCheckFailDialog$Builder;-><init>(Landroid/content/Context;Z)V

    .line 15
    new-instance p2, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity$handleUploadImageResult$1;

    invoke-direct {p2, p0}, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity$handleUploadImageResult$1;-><init>(Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;)V

    invoke-virtual {p1, p2}, Lcn/mucang/sundial/library/widget/FaceCheckFailDialog$Builder;->setContent(Lcn/mucang/sundial/library/widget/DialogCallBack;)Lcn/mucang/sundial/library/widget/FaceCheckFailDialog$Builder;

    move-result-object p1

    .line 16
    invoke-virtual {p1}, Lcn/mucang/sundial/library/widget/BlankDialog$Builder;->show()Lcn/mucang/sundial/library/widget/BlankDialog;

    goto :goto_1

    :cond_8
    if-eqz p2, :cond_9

    .line 17
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_a

    :cond_9
    const/4 v1, 0x1

    :cond_a
    if-eqz v1, :cond_b

    sget p1, Lcn/mucang/sundial/library/R$string;->tt_voice_face_check_fail:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    :cond_b
    invoke-static {p2, v5}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v4, v2, v4}, Lcn/mucang/sundial/library/tts/Tts;->speak$default(Ljava/lang/String;Lcn/mucang/sundial/library/tts/SpeakListener;ILjava/lang/Object;)V

    .line 18
    invoke-direct {p0}, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->showErrorLayout()V

    goto :goto_1

    :cond_c
    if-eqz p2, :cond_d

    .line 19
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_e

    :cond_d
    const/4 v1, 0x1

    :cond_e
    if-eqz v1, :cond_f

    sget p1, Lcn/mucang/sundial/library/R$string;->tt_voice_face_check_fail:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    :cond_f
    invoke-static {p2, v5}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v4, v2, v4}, Lcn/mucang/sundial/library/tts/Tts;->speak$default(Ljava/lang/String;Lcn/mucang/sundial/library/tts/SpeakListener;ILjava/lang/Object;)V

    .line 20
    invoke-direct {p0}, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->showErrorLayout()V

    :goto_1
    return-void
.end method

.method static synthetic handleUploadImageResult$default(Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;ILjava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 1
    :cond_0
    invoke-direct {p0, p1, p2}, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->handleUploadImageResult(ILjava/lang/String;)V

    return-void
.end method

.method private final initUVCCamera()V
    .locals 6

    .line 1
    new-instance v2, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity$initUVCCamera$1;

    invoke-direct {v2, p0}, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity$initUVCCamera$1;-><init>(Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;)V

    iput-object v2, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->cameraResult:Lcn/mucang/sundial/library/device/CameraResult;

    .line 2
    sget-object v0, Lcn/mucang/sundial/library/device/SundialDevice;->Companion:Lcn/mucang/sundial/library/device/SundialDevice$Companion;

    .line 3
    invoke-direct {p0}, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->getBinding()Lcn/mucang/sundial/library/databinding/TtActivityCoachFaceCheckBinding;

    move-result-object v1

    iget-object v3, v1, Lcn/mucang/sundial/library/databinding/TtActivityCoachFaceCheckBinding;->cameraView:Landroid/view/TextureView;

    .line 4
    invoke-direct {p0}, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->getBinding()Lcn/mucang/sundial/library/databinding/TtActivityCoachFaceCheckBinding;

    move-result-object v1

    iget-object v4, v1, Lcn/mucang/sundial/library/databinding/TtActivityCoachFaceCheckBinding;->cameraLayout:Landroid/widget/FrameLayout;

    const/4 v5, 0x1

    move-object v1, p0

    .line 5
    invoke-virtual/range {v0 .. v5}, Lcn/mucang/sundial/library/device/SundialDevice$Companion;->createCameraUtil(Landroid/content/Context;Lcn/mucang/sundial/library/device/CameraResult;Landroid/view/TextureView;Landroid/widget/FrameLayout;Z)Lcn/mucang/sundial/library/device/BaseCamera;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->cameraUtil:Lcn/mucang/sundial/library/device/BaseCamera;

    if-eqz v0, :cond_0

    .line 6
    invoke-interface {v0}, Lcn/mucang/sundial/library/device/TtCamera;->init()V

    .line 7
    :cond_0
    iget-object v0, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->cameraUtil:Lcn/mucang/sundial/library/device/BaseCamera;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcn/mucang/sundial/library/device/BaseCamera;->hasPermission()Z

    move-result v0

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->hasPermission:Z

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5224\u65ad\u6444\u50cf\u5934\u6743\u9650\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->hasPermission:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/sundial/android/log/SundialLog;->normal(Ljava/lang/Object;)V

    .line 9
    iget-boolean v0, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->hasPermission:Z

    if-nez v0, :cond_2

    const-string v0, "\u83b7\u53d6\u6444\u50cf\u5934\u6743\u9650\u5e76\u62cd\u7167"

    .line 10
    invoke-static {v0}, Lcn/mucang/sundial/android/log/SundialLog;->normal(Ljava/lang/Object;)V

    .line 11
    iget-object v0, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->cameraUtil:Lcn/mucang/sundial/library/device/BaseCamera;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcn/mucang/sundial/library/device/TtCamera;->open()V

    :cond_2
    return-void
.end method

.method private final isLogin()Z
    .locals 2

    .line 1
    iget v0, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->eventType:I

    sget-object v1, Lcn/mucang/sundial/android/tcp/upload/EventType;->COACH_SIGN_IN:Lcn/mucang/sundial/android/tcp/upload/EventType;

    invoke-virtual {v1}, Lcn/mucang/sundial/android/tcp/upload/EventType;->valueOf()I

    move-result v1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->eventType:I

    sget-object v1, Lcn/mucang/sundial/android/tcp/upload/EventType;->STUDENT_SIGN_IN:Lcn/mucang/sundial/android/tcp/upload/EventType;

    invoke-virtual {v1}, Lcn/mucang/sundial/android/tcp/upload/EventType;->valueOf()I

    move-result v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private final isLogout()Z
    .locals 2

    .line 1
    iget v0, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->eventType:I

    sget-object v1, Lcn/mucang/sundial/android/tcp/upload/EventType;->COACH_SIGN_OUT:Lcn/mucang/sundial/android/tcp/upload/EventType;

    invoke-virtual {v1}, Lcn/mucang/sundial/android/tcp/upload/EventType;->valueOf()I

    move-result v1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->eventType:I

    sget-object v1, Lcn/mucang/sundial/android/tcp/upload/EventType;->STUDENT_SIGN_OUT:Lcn/mucang/sundial/android/tcp/upload/EventType;

    invoke-virtual {v1}, Lcn/mucang/sundial/android/tcp/upload/EventType;->valueOf()I

    move-result v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private final observeForLoginLogoutIfNeed()V
    .locals 4

    .line 1
    iget v0, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->personMode:I

    sget-object v1, Lcn/mucang/sundial/android/PersonMode;->COACH:Lcn/mucang/sundial/android/PersonMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-ne v0, v2, :cond_0

    iget v0, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->eventType:I

    sget-object v2, Lcn/mucang/sundial/android/tcp/upload/EventType;->COACH_SIGN_IN:Lcn/mucang/sundial/android/tcp/upload/EventType;

    invoke-virtual {v2}, Lcn/mucang/sundial/android/tcp/upload/EventType;->valueOf()I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 2
    sget-object v0, Lcn/mucang/sundial/android/eventbus/LiveBus;->Companion:Lcn/mucang/sundial/android/eventbus/LiveBus$Companion;

    const-class v1, Lcn/mucang/sundial/android/eventbus/event/CoachLoginResponseEvent;

    invoke-virtual {v0, v1}, Lcn/mucang/sundial/android/eventbus/LiveBus$Companion;->with(Ljava/lang/Class;)Landroidx/lifecycle/i0;

    move-result-object v0

    new-instance v1, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity$observeForLoginLogoutIfNeed$1;

    invoke-direct {v1, p0}, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity$observeForLoginLogoutIfNeed$1;-><init>(Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/i0;->q(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    goto :goto_0

    .line 3
    :cond_0
    iget v0, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->personMode:I

    sget-object v2, Lcn/mucang/sundial/android/PersonMode;->STUDENT:Lcn/mucang/sundial/android/PersonMode;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    if-ne v0, v3, :cond_1

    iget v0, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->eventType:I

    sget-object v3, Lcn/mucang/sundial/android/tcp/upload/EventType;->STUDENT_SIGN_IN:Lcn/mucang/sundial/android/tcp/upload/EventType;

    invoke-virtual {v3}, Lcn/mucang/sundial/android/tcp/upload/EventType;->valueOf()I

    move-result v3

    if-ne v0, v3, :cond_1

    .line 4
    sget-object v0, Lcn/mucang/sundial/android/eventbus/LiveBus;->Companion:Lcn/mucang/sundial/android/eventbus/LiveBus$Companion;

    const-class v1, Lcn/mucang/sundial/android/eventbus/event/StudentLoginResponseEvent;

    invoke-virtual {v0, v1}, Lcn/mucang/sundial/android/eventbus/LiveBus$Companion;->with(Ljava/lang/Class;)Landroidx/lifecycle/i0;

    move-result-object v0

    new-instance v1, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity$observeForLoginLogoutIfNeed$2;

    invoke-direct {v1, p0}, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity$observeForLoginLogoutIfNeed$2;-><init>(Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/i0;->q(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    goto :goto_0

    .line 5
    :cond_1
    iget v0, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->personMode:I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->eventType:I

    sget-object v1, Lcn/mucang/sundial/android/tcp/upload/EventType;->COACH_SIGN_OUT:Lcn/mucang/sundial/android/tcp/upload/EventType;

    invoke-virtual {v1}, Lcn/mucang/sundial/android/tcp/upload/EventType;->valueOf()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 6
    sget-object v0, Lcn/mucang/sundial/android/eventbus/LiveBus;->Companion:Lcn/mucang/sundial/android/eventbus/LiveBus$Companion;

    const-class v1, Lcn/mucang/sundial/android/eventbus/event/CoachLogoutResponseEvent;

    invoke-virtual {v0, v1}, Lcn/mucang/sundial/android/eventbus/LiveBus$Companion;->with(Ljava/lang/Class;)Landroidx/lifecycle/i0;

    move-result-object v0

    new-instance v1, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity$observeForLoginLogoutIfNeed$3;

    invoke-direct {v1, p0}, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity$observeForLoginLogoutIfNeed$3;-><init>(Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/i0;->q(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    goto :goto_0

    .line 7
    :cond_2
    iget v0, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->personMode:I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->eventType:I

    sget-object v1, Lcn/mucang/sundial/android/tcp/upload/EventType;->STUDENT_SIGN_OUT:Lcn/mucang/sundial/android/tcp/upload/EventType;

    invoke-virtual {v1}, Lcn/mucang/sundial/android/tcp/upload/EventType;->valueOf()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 8
    sget-object v0, Lcn/mucang/sundial/android/eventbus/LiveBus;->Companion:Lcn/mucang/sundial/android/eventbus/LiveBus$Companion;

    const-class v1, Lcn/mucang/sundial/android/eventbus/event/StudentLogoutResponseEvent;

    invoke-virtual {v0, v1}, Lcn/mucang/sundial/android/eventbus/LiveBus$Companion;->with(Ljava/lang/Class;)Landroidx/lifecycle/i0;

    move-result-object v0

    new-instance v1, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity$observeForLoginLogoutIfNeed$4;

    invoke-direct {v1, p0}, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity$observeForLoginLogoutIfNeed$4;-><init>(Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/i0;->q(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private final showCompleteLayout()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->getBinding()Lcn/mucang/sundial/library/databinding/TtActivityCoachFaceCheckBinding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/sundial/library/databinding/TtActivityCoachFaceCheckBinding;->imageErrorLayout:Landroid/widget/LinearLayout;

    const-string v1, "binding.imageErrorLayout"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3
    invoke-direct {p0}, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->getBinding()Lcn/mucang/sundial/library/databinding/TtActivityCoachFaceCheckBinding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/sundial/library/databinding/TtActivityCoachFaceCheckBinding;->ok:Landroid/widget/TextView;

    const-string v2, "binding.ok"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    invoke-direct {p0}, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->getBinding()Lcn/mucang/sundial/library/databinding/TtActivityCoachFaceCheckBinding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/sundial/library/databinding/TtActivityCoachFaceCheckBinding;->exit:Landroid/widget/TextView;

    const-string v1, "binding.exit"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private final showErrorLayout()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->getBinding()Lcn/mucang/sundial/library/databinding/TtActivityCoachFaceCheckBinding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/sundial/library/databinding/TtActivityCoachFaceCheckBinding;->imageErrorLayout:Landroid/widget/LinearLayout;

    const-string v1, "binding.imageErrorLayout"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3
    invoke-direct {p0}, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->getBinding()Lcn/mucang/sundial/library/databinding/TtActivityCoachFaceCheckBinding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/sundial/library/databinding/TtActivityCoachFaceCheckBinding;->ok:Landroid/widget/TextView;

    const-string v2, "binding.ok"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v2, 0x8

    .line 4
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 5
    invoke-direct {p0}, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->getBinding()Lcn/mucang/sundial/library/databinding/TtActivityCoachFaceCheckBinding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/sundial/library/databinding/TtActivityCoachFaceCheckBinding;->exit:Landroid/widget/TextView;

    const-string v2, "binding.exit"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 7
    invoke-direct {p0}, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->getBinding()Lcn/mucang/sundial/library/databinding/TtActivityCoachFaceCheckBinding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/sundial/library/databinding/TtActivityCoachFaceCheckBinding;->exit:Landroid/widget/TextView;

    new-instance v1, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity$showErrorLayout$1;

    invoke-direct {v1, p0}, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity$showErrorLayout$1;-><init>(Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    iget-object v0, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->autoFinishTask:Ljava/lang/Runnable;

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->e(Ljava/lang/Runnable;)V

    .line 9
    iget-object v0, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->autoFinishTask:Ljava/lang/Runnable;

    const-wide/16 v1, 0x7530

    invoke-static {v0, v1, v2}, Lcn/mucang/android/core/utils/u;->d(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private final signInOutSuccess()V
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/sundial/library/util/GlobalData;->INSTANCE:Lcn/mucang/sundial/library/util/GlobalData;

    iget v1, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->personMode:I

    invoke-virtual {v0, v1}, Lcn/mucang/sundial/library/util/GlobalData;->clearSignOutErrorCount(I)V

    const/4 v0, -0x1

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private final speakToTakePhoto()V
    .locals 6

    .line 1
    invoke-direct {p0}, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->cancelCountDown()V

    .line 2
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    .line 3
    invoke-direct {p0}, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->getBinding()Lcn/mucang/sundial/library/databinding/TtActivityCoachFaceCheckBinding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/sundial/library/databinding/TtActivityCoachFaceCheckBinding;->imageErrorLayout:Landroid/widget/LinearLayout;

    const-string v1, "binding.imageErrorLayout"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->autoFinishTask:Ljava/lang/Runnable;

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->e(Ljava/lang/Runnable;)V

    .line 5
    invoke-direct {p0}, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->getBinding()Lcn/mucang/sundial/library/databinding/TtActivityCoachFaceCheckBinding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/sundial/library/databinding/TtActivityCoachFaceCheckBinding;->previewImg:Landroid/widget/ImageView;

    const-string v2, "binding.previewImg"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->cameraUtil:Lcn/mucang/sundial/library/device/BaseCamera;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/mucang/sundial/library/device/BaseCamera;->isolatePreviewPage()Z

    move-result v0

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    .line 7
    invoke-direct {p0}, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->isLogin()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->isLogout()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    :cond_1
    invoke-static {}, Lcn/mucang/sundial/android/SundialManager;->getInstance()Lcn/mucang/sundial/android/SundialManager;

    move-result-object v0

    const-string v3, "SundialManager.getInstance()"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcn/mucang/sundial/android/SundialManager;->getLogInOutSecond()I

    move-result v0

    .line 9
    new-instance v3, Lcn/mucang/sundial/library/util/ConvertNum;

    invoke-direct {v3, v0}, Lcn/mucang/sundial/library/util/ConvertNum;-><init>(I)V

    invoke-virtual {v3}, Lcn/mucang/sundial/library/util/ConvertNum;->convert()Ljava/lang/String;

    move-result-object v3

    .line 10
    sget v4, Lcn/mucang/sundial/library/R$string;->tt_voice_take_pic:I

    new-array v5, v2, [Ljava/lang/Object;

    aput-object v3, v5, v1

    invoke-virtual {p0, v4, v5}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcn/mucang/sundial/android/log/SundialLog;->normal(Ljava/lang/Object;)V

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v3, v2, v1

    .line 11
    invoke-virtual {p0, v4, v2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(R.string.tt_voice_take_pic, delayNum)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity$speakToTakePhoto$$inlined$runCatching$lambda$1;

    invoke-direct {v2, v0, p0}, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity$speakToTakePhoto$$inlined$runCatching$lambda$1;-><init>(ILcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;)V

    invoke-static {v1, v2}, Lcn/mucang/sundial/library/tts/Tts;->speak(Ljava/lang/String;Lcn/mucang/sundial/library/tts/SpeakListener;)V

    goto :goto_1

    :cond_2
    const-string v0, "\u65e0\u8bed\u97f3\u68c0\u6d4b\u6444\u50cf\u5934\u6570\u91cf"

    .line 12
    invoke-static {v0}, Lcn/mucang/sundial/android/log/SundialLog;->normal(Ljava/lang/Object;)V

    .line 13
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->checkCamera()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 14
    iget-object v0, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->cameraUtil:Lcn/mucang/sundial/library/device/BaseCamera;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcn/mucang/sundial/library/device/TtCamera;->takePhoto()V

    .line 15
    :cond_3
    :goto_1
    sget-object v0, Lkotlin/v;->a:Lkotlin/v;

    .line 16
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-static {v0}, Lkotlin/k;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    return-void
.end method

.method private final startCountDown(I)V
    .locals 9

    .line 1
    invoke-direct {p0}, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->getBinding()Lcn/mucang/sundial/library/databinding/TtActivityCoachFaceCheckBinding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/sundial/library/databinding/TtActivityCoachFaceCheckBinding;->tvDelayNum:Landroid/widget/TextView;

    const-string v1, "binding.tvDelayNum"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    invoke-direct {p0}, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->getBinding()Lcn/mucang/sundial/library/databinding/TtActivityCoachFaceCheckBinding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/sundial/library/databinding/TtActivityCoachFaceCheckBinding;->rlLayout:Landroid/widget/LinearLayout;

    const-string v1, "binding.rlLayout"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4
    new-instance v0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity$startCountDown$1;

    mul-int/lit16 v1, p1, 0x3e8

    add-int/lit8 v1, v1, 0x64

    int-to-long v5, v1

    const-wide/16 v7, 0x3e8

    move-object v2, v0

    move-object v3, p0

    move v4, p1

    invoke-direct/range {v2 .. v8}, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity$startCountDown$1;-><init>(Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;IJJ)V

    .line 5
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->voiceCountDownTimer:Landroid/os/CountDownTimer;

    return-void
.end method

.method private final startCountDownUpload(I)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->uploadCountDownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 2
    :cond_0
    new-instance v0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity$startCountDownUpload$1;

    mul-int/lit16 v1, p1, 0x3e8

    add-int/lit8 v1, v1, 0x64

    int-to-long v4, v1

    const-wide/16 v6, 0x3e8

    move-object v1, v0

    move-object v2, p0

    move v3, p1

    invoke-direct/range {v1 .. v7}, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity$startCountDownUpload$1;-><init>(Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;IJJ)V

    .line 3
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->uploadCountDownTimer:Landroid/os/CountDownTimer;

    return-void
.end method

.method private final takePhoto()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->takePictureWhenGetInfo:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->takePictureWhenGetInfo:Z

    .line 3
    invoke-direct {p0}, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->speakToTakePhoto()V

    :cond_0
    return-void
.end method

.method private final toLoginOrLogout()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget v0, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->personMode:I

    sget-object v1, Lcn/mucang/sundial/android/PersonMode;->COACH:Lcn/mucang/sundial/android/PersonMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 3
    sget-object v0, Lcn/mucang/sundial/library/util/LoginUtil;->INSTANCE:Lcn/mucang/sundial/library/util/LoginUtil;

    invoke-direct {p0}, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->getViewModel()Lcn/mucang/sundial/library/viewmodel/FaceCheckActivityViewModel;

    move-result-object v1

    invoke-virtual {v1}, Lcn/mucang/sundial/library/viewmodel/FaceCheckActivityViewModel;->getCoachInfoData()Lcn/mucang/sundial/android/db/entity/CoachInfo;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcn/mucang/sundial/library/util/LoginUtil;->executeCoachLogin(Lcn/mucang/sundial/library/activity/TopActivity;Lcn/mucang/sundial/android/db/entity/CoachInfo;)V

    goto :goto_0

    .line 4
    :cond_0
    sget-object v0, Lcn/mucang/sundial/library/util/LoginUtil;->INSTANCE:Lcn/mucang/sundial/library/util/LoginUtil;

    invoke-direct {p0}, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->getViewModel()Lcn/mucang/sundial/library/viewmodel/FaceCheckActivityViewModel;

    move-result-object v1

    invoke-virtual {v1}, Lcn/mucang/sundial/library/viewmodel/FaceCheckActivityViewModel;->getStudentInfoData()Lcn/mucang/sundial/android/db/entity/StudentInfo;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcn/mucang/sundial/library/util/LoginUtil;->executeStudentLogin(Lcn/mucang/sundial/library/activity/TopActivity;Lcn/mucang/sundial/android/db/entity/StudentInfo;)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-direct {p0}, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->isLogout()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    sget-object v0, Lcn/mucang/sundial/library/util/LoginUtil;->INSTANCE:Lcn/mucang/sundial/library/util/LoginUtil;

    iget v1, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->personMode:I

    invoke-virtual {v0, p0, v1}, Lcn/mucang/sundial/library/util/LoginUtil;->executeSignOut(Lcn/mucang/sundial/library/activity/TopActivity;I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private final toastCustomMsg(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->getBinding()Lcn/mucang/sundial/library/databinding/TtActivityCoachFaceCheckBinding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/sundial/library/databinding/TtActivityCoachFaceCheckBinding;->tvHint:Landroid/widget/TextView;

    const-string v1, "binding.tvHint"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xf

    if-le v0, v1, :cond_0

    .line 3
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->j(Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private final updateTitle()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->getBinding()Lcn/mucang/sundial/library/databinding/TtActivityCoachFaceCheckBinding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/sundial/library/databinding/TtActivityCoachFaceCheckBinding;->titleIv:Landroid/widget/TextView;

    const-string v1, "binding.titleIv"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget v1, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->personMode:I

    sget-object v2, Lcn/mucang/sundial/android/PersonMode;->COACH:Lcn/mucang/sundial/android/PersonMode;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    if-ne v1, v3, :cond_0

    iget v1, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->checkMode:I

    sget-object v3, Lcn/mucang/sundial/library/entity/CheckMode;->SIGN_IN:Lcn/mucang/sundial/library/entity/CheckMode;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    if-ne v1, v3, :cond_0

    const-string v1, "\u6559\u7ec3\u7b7e\u5230"

    goto :goto_0

    .line 2
    :cond_0
    iget v1, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->personMode:I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->checkMode:I

    sget-object v2, Lcn/mucang/sundial/library/entity/CheckMode;->SIGN_OUT:Lcn/mucang/sundial/library/entity/CheckMode;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-ne v1, v2, :cond_1

    const-string v1, "\u6559\u7ec3\u7b7e\u9000"

    goto :goto_0

    .line 3
    :cond_1
    iget v1, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->personMode:I

    sget-object v2, Lcn/mucang/sundial/android/PersonMode;->STUDENT:Lcn/mucang/sundial/android/PersonMode;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->checkMode:I

    sget-object v3, Lcn/mucang/sundial/library/entity/CheckMode;->SIGN_IN:Lcn/mucang/sundial/library/entity/CheckMode;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    if-ne v1, v3, :cond_2

    const-string v1, "\u5b66\u5458\u7b7e\u5230"

    goto :goto_0

    .line 4
    :cond_2
    iget v1, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->personMode:I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-ne v1, v2, :cond_3

    iget v1, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->checkMode:I

    sget-object v2, Lcn/mucang/sundial/library/entity/CheckMode;->SIGN_OUT:Lcn/mucang/sundial/library/entity/CheckMode;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-ne v1, v2, :cond_3

    const-string v1, "\u5b66\u5458\u7b7e\u9000"

    goto :goto_0

    :cond_3
    const-string v1, "\u4eba\u8138\u9a8c\u8bc1"

    .line 5
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private final updateView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->getBinding()Lcn/mucang/sundial/library/databinding/TtActivityCoachFaceCheckBinding;

    move-result-object v0

    .line 2
    iget-object v1, v0, Lcn/mucang/sundial/library/databinding/TtActivityCoachFaceCheckBinding;->nameTip:Landroid/widget/TextView;

    const-string v2, "nameTip"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget v2, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->personMode:I

    .line 3
    sget-object v3, Lcn/mucang/sundial/android/PersonMode;->COACH:Lcn/mucang/sundial/android/PersonMode;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const/4 v5, 0x0

    if-ne v2, v4, :cond_0

    const-string v2, "\u6559\u7ec3\u5458\u59d3\u540d"

    goto :goto_0

    .line 4
    :cond_0
    sget-object v4, Lcn/mucang/sundial/android/PersonMode;->STUDENT:Lcn/mucang/sundial/android/PersonMode;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-ne v2, v4, :cond_1

    const-string v2, "\u5b66\u5458\u59d3\u540d"

    goto :goto_0

    :cond_1
    move-object v2, v5

    .line 5
    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v1, v0, Lcn/mucang/sundial/library/databinding/TtActivityCoachFaceCheckBinding;->name:Landroid/widget/TextView;

    const-string v2, "name"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object p1, v0, Lcn/mucang/sundial/library/databinding/TtActivityCoachFaceCheckBinding;->previewImg:Landroid/widget/ImageView;

    const-string v1, "previewImg"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 8
    iget-object p1, v0, Lcn/mucang/sundial/library/databinding/TtActivityCoachFaceCheckBinding;->tvCardId:Landroid/widget/TextView;

    const-string v1, "tvCardId"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x4

    const/16 v2, 0xb

    invoke-static {p3, v1, v2}, Lcn/mucang/sundial/library/util/KtxsKt;->mask(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget-object p1, v0, Lcn/mucang/sundial/library/databinding/TtActivityCoachFaceCheckBinding;->typeTip:Landroid/widget/TextView;

    const-string p3, "typeTip"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget p3, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->personMode:I

    .line 10
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne p3, v1, :cond_2

    const-string p3, "\u57f9\u8bad\u8f66\u578b"

    goto :goto_1

    .line 11
    :cond_2
    sget-object v1, Lcn/mucang/sundial/android/PersonMode;->STUDENT:Lcn/mucang/sundial/android/PersonMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne p3, v1, :cond_3

    const-string p3, "\u57f9\u8bad\u79d1\u76ee"

    goto :goto_1

    :cond_3
    move-object p3, v5

    .line 12
    :goto_1
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    iget-object p1, v0, Lcn/mucang/sundial/library/databinding/TtActivityCoachFaceCheckBinding;->tvCarType:Landroid/widget/TextView;

    const-string p3, "tvCarType"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget p3, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->personMode:I

    .line 14
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne p3, v1, :cond_4

    goto :goto_2

    .line 15
    :cond_4
    sget-object v1, Lcn/mucang/sundial/android/PersonMode;->STUDENT:Lcn/mucang/sundial/android/PersonMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne p3, v1, :cond_5

    sget-object p3, Lcn/mucang/sundial/library/util/SubjectUtil;->INSTANCE:Lcn/mucang/sundial/library/util/SubjectUtil;

    invoke-static {}, Lcn/mucang/sundial/android/SundialManager;->getInstance()Lcn/mucang/sundial/android/SundialManager;

    move-result-object v1

    invoke-virtual {v1, p4}, Lcn/mucang/sundial/android/SundialManager;->getCourseTypeByCourseCode(Ljava/lang/String;)I

    move-result p4

    invoke-virtual {p3, p4}, Lcn/mucang/sundial/library/util/SubjectUtil;->subject2name(I)Ljava/lang/String;

    move-result-object p4

    goto :goto_2

    :cond_5
    move-object p4, v5

    .line 16
    :goto_2
    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    iget-object p1, v0, Lcn/mucang/sundial/library/databinding/TtActivityCoachFaceCheckBinding;->tvNo:Landroid/widget/TextView;

    const-string p3, "tvNo"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroidx/fragment/app/d;)Lcom/bumptech/glide/RequestManager;

    move-result-object p1

    .line 19
    invoke-virtual {p1, p2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    .line 20
    iget-object p2, v0, Lcn/mucang/sundial/library/databinding/TtActivityCoachFaceCheckBinding;->avatar:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    return-void
.end method

.method private final uploadImage(Lcn/mucang/sundial/android/db/entity/PhotoRecord;)V
    .locals 2

    .line 4
    invoke-virtual {p1}, Lcn/mucang/sundial/android/db/entity/PhotoRecord;->getPhotoId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "photoRecord.photoId"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->uploadPhotoId:Ljava/lang/String;

    .line 5
    iget v0, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->personMode:I

    sget-object v1, Lcn/mucang/sundial/android/PersonMode;->STUDENT:Lcn/mucang/sundial/android/PersonMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 6
    invoke-static {}, Lcn/mucang/sundial/android/tcp/upload/UploadImageManager;->getInstance()Lcn/mucang/sundial/android/tcp/upload/UploadImageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/mucang/sundial/android/tcp/upload/UploadImageManager;->uploadPhotoByClassroom(Lcn/mucang/sundial/android/db/entity/PhotoRecord;)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {}, Lcn/mucang/sundial/android/tcp/upload/UploadImageManager;->getInstance()Lcn/mucang/sundial/android/tcp/upload/UploadImageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/mucang/sundial/android/tcp/upload/UploadImageManager;->uploadPhoto(Lcn/mucang/sundial/android/db/entity/PhotoRecord;)V

    :goto_0
    return-void
.end method

.method private final uploadImage(Ljava/io/File;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u4e0a\u4f20\u56fe\u7247\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/sundial/android/log/SundialLog;->normal(Ljava/lang/Object;)V

    const-string v0, ""

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, v1}, Lcn/mucang/sundial/library/activity/TopActivity;->showLoadingDialog(Ljava/lang/String;Z)V

    .line 3
    new-instance v0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity$uploadImage$1;

    invoke-direct {v0, p0, p1}, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity$uploadImage$1;-><init>(Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;Ljava/io/File;)V

    invoke-static {v0}, Lcn/mucang/android/core/config/MucangConfig;->f(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public initData()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0xb06

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v2, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity$initData$1;

    invoke-direct {v2, p0, v1}, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity$initData$1;-><init>(Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;I)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    :cond_1
    const/4 v0, 0x1

    .line 3
    invoke-static {v0}, Lcn/mucang/sundial/android/tcp/upload/TakePhotoManager;->setTakingPhoto(Z)V

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 5
    iget v2, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->personMode:I

    const-string v3, "person_model"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->personMode:I

    .line 6
    iget v2, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->checkMode:I

    const-string v3, "check_model"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->checkMode:I

    .line 7
    iget v2, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->uploadMode:I

    const-string v3, "upload_mode"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->uploadMode:I

    .line 8
    iget v2, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->eventType:I

    const-string v3, "upload_event_type"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->eventType:I

    const-string v2, "id_num"

    .line 9
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->idNum:Ljava/lang/String;

    :goto_0
    iput-object v2, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->idNum:Ljava/lang/String;

    const-string v2, "auth_token"

    .line 10
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->authToken:Ljava/lang/String;

    :goto_1
    iput-object v2, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->authToken:Ljava/lang/String;

    const-string v2, "xy_token"

    .line 11
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    goto :goto_2

    :cond_4
    iget-object v2, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->xyToken:Ljava/lang/String;

    :goto_2
    iput-object v2, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->xyToken:Ljava/lang/String;

    .line 12
    iget v2, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->courseSubject:I

    const-string v3, "course_subject"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->courseSubject:I

    .line 13
    :cond_5
    sget-object v1, Lcn/mucang/sundial/android/eventbus/LiveBus;->Companion:Lcn/mucang/sundial/android/eventbus/LiveBus$Companion;

    const-class v2, Lcn/mucang/sundial/android/eventbus/event/UploadImageEvent;

    invoke-virtual {v1, v2}, Lcn/mucang/sundial/android/eventbus/LiveBus$Companion;->with(Ljava/lang/Class;)Landroidx/lifecycle/i0;

    move-result-object v1

    new-instance v2, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity$initData$3;

    invoke-direct {v2, p0}, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity$initData$3;-><init>(Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;)V

    invoke-virtual {v1, p0, v2}, Landroidx/lifecycle/i0;->q(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    .line 14
    invoke-direct {p0}, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->observeForLoginLogoutIfNeed()V

    .line 15
    new-instance v1, Landroid/media/SoundPool$Builder;

    invoke-direct {v1}, Landroid/media/SoundPool$Builder;-><init>()V

    .line 16
    invoke-virtual {v1, v0}, Landroid/media/SoundPool$Builder;->setMaxStreams(I)Landroid/media/SoundPool$Builder;

    move-result-object v1

    .line 17
    new-instance v2, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v2}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/media/AudioAttributes$Builder;->setLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/SoundPool$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/SoundPool$Builder;

    move-result-object v1

    .line 18
    invoke-virtual {v1}, Landroid/media/SoundPool$Builder;->build()Landroid/media/SoundPool;

    move-result-object v1

    iput-object v1, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->soundPool:Landroid/media/SoundPool;

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    .line 19
    sget v4, Lcn/mucang/sundial/library/R$raw;->wav_camera:I

    invoke-virtual {v1, p0, v4, v0}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    goto :goto_3

    :cond_6
    const/4 v1, 0x0

    :goto_3
    iput v1, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->wavCamera:I

    .line 20
    iget-object v1, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->soundPool:Landroid/media/SoundPool;

    if-eqz v1, :cond_7

    sget v4, Lcn/mucang/sundial/library/R$raw;->raw_hint:I

    invoke-virtual {v1, p0, v4, v0}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    goto :goto_4

    :cond_7
    const/4 v1, 0x0

    :goto_4
    iput v1, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->wavTimer:I

    .line 21
    iget-object v1, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->fiveDownTimer:[Ljava/lang/Integer;

    iget-object v4, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->soundPool:Landroid/media/SoundPool;

    if-eqz v4, :cond_8

    sget v5, Lcn/mucang/sundial/library/R$raw;->tt__5:I

    invoke-virtual {v4, p0, v5, v0}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v4

    goto :goto_5

    :cond_8
    const/4 v4, 0x0

    :goto_5
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    .line 22
    iget-object v1, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->fiveDownTimer:[Ljava/lang/Integer;

    iget-object v4, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->soundPool:Landroid/media/SoundPool;

    if-eqz v4, :cond_9

    sget v5, Lcn/mucang/sundial/library/R$raw;->tt__4:I

    invoke-virtual {v4, p0, v5, v0}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v4

    goto :goto_6

    :cond_9
    const/4 v4, 0x0

    :goto_6
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v0

    .line 23
    iget-object v1, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->fiveDownTimer:[Ljava/lang/Integer;

    const/4 v4, 0x2

    iget-object v5, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->soundPool:Landroid/media/SoundPool;

    if-eqz v5, :cond_a

    sget v6, Lcn/mucang/sundial/library/R$raw;->tt__3:I

    invoke-virtual {v5, p0, v6, v0}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v5

    goto :goto_7

    :cond_a
    const/4 v5, 0x0

    :goto_7
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    .line 24
    iget-object v1, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->fiveDownTimer:[Ljava/lang/Integer;

    iget-object v4, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->soundPool:Landroid/media/SoundPool;

    if-eqz v4, :cond_b

    sget v5, Lcn/mucang/sundial/library/R$raw;->tt__2:I

    invoke-virtual {v4, p0, v5, v0}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v4

    goto :goto_8

    :cond_b
    const/4 v4, 0x0

    :goto_8
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    .line 25
    iget-object v1, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->fiveDownTimer:[Ljava/lang/Integer;

    const/4 v3, 0x4

    iget-object v4, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->soundPool:Landroid/media/SoundPool;

    if-eqz v4, :cond_c

    sget v2, Lcn/mucang/sundial/library/R$raw;->tt__1:I

    invoke-virtual {v4, p0, v2, v0}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    :cond_c
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v3

    return-void
.end method

.method public initViewModel()V
    .locals 9

    .line 1
    invoke-super {p0}, Lcn/mucang/sundial/library/sdk/coach/TopBaseActivity;->initViewModel()V

    .line 2
    invoke-direct {p0}, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->updateTitle()V

    .line 3
    invoke-direct {p0}, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->getViewModel()Lcn/mucang/sundial/library/viewmodel/FaceCheckActivityViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/sundial/library/viewmodel/FaceCheckActivityViewModel;->getUserCoachData()Landroidx/lifecycle/i0;

    move-result-object v0

    new-instance v1, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity$initViewModel$1;

    invoke-direct {v1, p0}, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity$initViewModel$1;-><init>(Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->h(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    .line 4
    invoke-direct {p0}, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->getViewModel()Lcn/mucang/sundial/library/viewmodel/FaceCheckActivityViewModel;

    move-result-object v2

    iget v3, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->personMode:I

    iget v4, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->checkMode:I

    iget-object v5, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->idNum:Ljava/lang/String;

    iget-object v6, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->authToken:Ljava/lang/String;

    iget v7, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->courseSubject:I

    iget-object v8, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->xyToken:Ljava/lang/String;

    invoke-virtual/range {v2 .. v8}, Lcn/mucang/sundial/library/viewmodel/FaceCheckActivityViewModel;->getInfo(IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public onCreateView(Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .line 1
    invoke-direct {p0}, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->initUVCCamera()V

    .line 2
    invoke-direct {p0}, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->getBinding()Lcn/mucang/sundial/library/databinding/TtActivityCoachFaceCheckBinding;

    move-result-object p1

    iget-object p1, p1, Lcn/mucang/sundial/library/databinding/TtActivityCoachFaceCheckBinding;->closeIv:Landroid/widget/TextView;

    new-instance v0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity$onCreateView$1;

    invoke-direct {v0, p0}, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity$onCreateView$1;-><init>(Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    invoke-direct {p0}, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->getBinding()Lcn/mucang/sundial/library/databinding/TtActivityCoachFaceCheckBinding;

    move-result-object p1

    iget-object p1, p1, Lcn/mucang/sundial/library/databinding/TtActivityCoachFaceCheckBinding;->closeIv:Landroid/widget/TextView;

    const-string v0, "binding.closeIv"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcn/mucang/sundial/library/R$drawable;->tt__guide_ic_back:I

    invoke-virtual {p0}, Landroidx/appcompat/app/d;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcn/mucang/sundial/library/R$dimen;->rpx_38:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-static {p1, v0, v1}, Lcn/mucang/sundial/library/util/KtxsKt;->setDrawableLeft(Landroid/widget/TextView;II)V

    .line 4
    new-instance p1, Lcn/mucang/sundial/library/util/ClickController;

    const/4 v0, 0x5

    invoke-direct {p1, v0}, Lcn/mucang/sundial/library/util/ClickController;-><init>(I)V

    .line 5
    invoke-direct {p0}, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->getBinding()Lcn/mucang/sundial/library/databinding/TtActivityCoachFaceCheckBinding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/sundial/library/databinding/TtActivityCoachFaceCheckBinding;->titleIv:Landroid/widget/TextView;

    new-instance v1, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity$onCreateView$2;

    invoke-direct {v1, p0, p1}, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity$onCreateView$2;-><init>(Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;Lcn/mucang/sundial/library/util/ClickController;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    invoke-direct {p0}, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->getBinding()Lcn/mucang/sundial/library/databinding/TtActivityCoachFaceCheckBinding;

    move-result-object p1

    iget-object p1, p1, Lcn/mucang/sundial/library/databinding/TtActivityCoachFaceCheckBinding;->retry:Landroid/widget/TextView;

    new-instance v0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity$onCreateView$3;

    invoke-direct {v0, p0}, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity$onCreateView$3;-><init>(Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    invoke-direct {p0}, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->getBinding()Lcn/mucang/sundial/library/databinding/TtActivityCoachFaceCheckBinding;

    move-result-object p1

    iget-object p1, p1, Lcn/mucang/sundial/library/databinding/TtActivityCoachFaceCheckBinding;->ok:Landroid/widget/TextView;

    new-instance v0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity$onCreateView$4;

    invoke-direct {v0, p0}, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity$onCreateView$4;-><init>(Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    invoke-direct {p0}, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->getBinding()Lcn/mucang/sundial/library/databinding/TtActivityCoachFaceCheckBinding;

    move-result-object p1

    iget-object p1, p1, Lcn/mucang/sundial/library/databinding/TtActivityCoachFaceCheckBinding;->tvDelayNum:Landroid/widget/TextView;

    const-string v0, "binding.tvDelayNum"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcn/mucang/sundial/android/SundialManager;->getInstance()Lcn/mucang/sundial/android/SundialManager;

    move-result-object v0

    const-string v1, "SundialManager.getInstance()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcn/mucang/sundial/android/SundialManager;->getLogInOutSecond()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    invoke-direct {p0}, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->getBinding()Lcn/mucang/sundial/library/databinding/TtActivityCoachFaceCheckBinding;

    move-result-object p1

    iget-object p1, p1, Lcn/mucang/sundial/library/databinding/TtActivityCoachFaceCheckBinding;->rlLayout:Landroid/widget/LinearLayout;

    const-string v0, "binding.rlLayout"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 10
    invoke-direct {p0}, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->getBinding()Lcn/mucang/sundial/library/databinding/TtActivityCoachFaceCheckBinding;

    move-result-object p1

    iget-object p1, p1, Lcn/mucang/sundial/library/databinding/TtActivityCoachFaceCheckBinding;->imageErrorLayout:Landroid/widget/LinearLayout;

    const-string v0, "binding.imageErrorLayout"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x8

    .line 11
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 12
    invoke-direct {p0}, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->getBinding()Lcn/mucang/sundial/library/databinding/TtActivityCoachFaceCheckBinding;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/sundial/library/databinding/TtActivityCoachFaceCheckBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    const-string v0, "binding.root"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/d;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->soundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->cameraUtil:Lcn/mucang/sundial/library/device/BaseCamera;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcn/mucang/sundial/library/device/TtCamera;->release()V

    .line 4
    :cond_1
    iget-object v0, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->autoFinishTask:Ljava/lang/Runnable;

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->e(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 5
    invoke-static {v0}, Lcn/mucang/sundial/android/tcp/upload/TakePhotoManager;->setTakingPhoto(Z)V

    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcn/mucang/sundial/library/activity/TopActivity;->onPause()V

    .line 2
    invoke-direct {p0}, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->cancelCountDown()V

    .line 3
    iget-object v0, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->checkCameraTask:Ljava/lang/Runnable;

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->e(Ljava/lang/Runnable;)V

    .line 4
    invoke-static {}, Lcn/mucang/sundial/library/tts/Tts;->speakStop()V

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u79bb\u5f00"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->isLogin()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "\u7b7e\u5230"

    goto :goto_0

    :cond_0
    const-string v1, "\u7b7e\u9000"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u62cd\u7167\u9875\u9762"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/sundial/android/log/SundialLog;->normal(Ljava/lang/Object;)V

    .line 6
    iget-boolean v0, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->hasPermission:Z

    if-eqz v0, :cond_1

    const-string v0, "\u5173\u95ed\u6444\u50cf\u5934"

    .line 7
    invoke-static {v0}, Lcn/mucang/sundial/android/log/SundialLog;->normal(Ljava/lang/Object;)V

    .line 8
    iget-object v0, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->cameraUtil:Lcn/mucang/sundial/library/device/BaseCamera;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcn/mucang/sundial/library/device/TtCamera;->pause()V

    goto :goto_1

    :cond_1
    const-string v0, "\u5173\u95ed\u6444\u50cf\u5934\u65e0\u6743\u9650"

    .line 9
    invoke-static {v0}, Lcn/mucang/sundial/android/log/SundialLog;->normal(Ljava/lang/Object;)V

    :cond_2
    :goto_1
    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/d;->onResume()V

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->startTime:J

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u6253\u5f00"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->isLogin()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "\u7b7e\u5230"

    goto :goto_0

    :cond_0
    const-string v1, "\u7b7e\u9000"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u62cd\u7167\u9875\u9762"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/sundial/android/log/SundialLog;->normal(Ljava/lang/Object;)V

    .line 4
    iget-boolean v0, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->hasPermission:Z

    if-eqz v0, :cond_2

    const-string v0, "\u6253\u5f00\u6444\u50cf\u5934"

    .line 5
    invoke-static {v0}, Lcn/mucang/sundial/android/log/SundialLog;->normal(Ljava/lang/Object;)V

    .line 6
    iget-object v0, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->cameraUtil:Lcn/mucang/sundial/library/device/BaseCamera;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcn/mucang/sundial/library/device/TtCamera;->open()V

    .line 7
    :cond_1
    iget-object v0, p0, Lcn/mucang/sundial/library/sdk/coach/CoachFaceCheckActivity;->checkCameraTask:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1388

    invoke-static {v0, v1, v2}, Lcn/mucang/android/core/utils/u;->d(Ljava/lang/Runnable;J)V

    goto :goto_1

    :cond_2
    const-string v0, "\u6253\u5f00\u6444\u50cf\u5934\u65e0\u6743\u9650"

    .line 8
    invoke-static {v0}, Lcn/mucang/sundial/android/log/SundialLog;->normal(Ljava/lang/Object;)V

    :goto_1
    return-void
.end method
