.class Lcn/mucang/sundial/android/tcp/upload/UploadImageManager$UploadImageManagerHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/sundial/android/tcp/upload/UploadImageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UploadImageManagerHolder"
.end annotation


# static fields
.field private static final sInstance:Lcn/mucang/sundial/android/tcp/upload/UploadImageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcn/mucang/sundial/android/tcp/upload/UploadImageManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/mucang/sundial/android/tcp/upload/UploadImageManager;-><init>(Lcn/mucang/sundial/android/tcp/upload/UploadImageManager$1;)V

    sput-object v0, Lcn/mucang/sundial/android/tcp/upload/UploadImageManager$UploadImageManagerHolder;->sInstance:Lcn/mucang/sundial/android/tcp/upload/UploadImageManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcn/mucang/sundial/android/tcp/upload/UploadImageManager;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/sundial/android/tcp/upload/UploadImageManager$UploadImageManagerHolder;->sInstance:Lcn/mucang/sundial/android/tcp/upload/UploadImageManager;

    return-object v0
.end method
