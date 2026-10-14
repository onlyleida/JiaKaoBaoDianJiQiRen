.class public final enum Lcn/mucang/sundial/android/tcp/message/training/receive/UploadPhotoStartResponse$Result;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/sundial/android/tcp/message/training/receive/UploadPhotoStartResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Result"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/mucang/sundial/android/tcp/message/training/receive/UploadPhotoStartResponse$Result;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/mucang/sundial/android/tcp/message/training/receive/UploadPhotoStartResponse$Result;

.field public static final enum PHOTO_ID_ERROR:Lcn/mucang/sundial/android/tcp/message/training/receive/UploadPhotoStartResponse$Result;

.field public static final enum REJECT:Lcn/mucang/sundial/android/tcp/message/training/receive/UploadPhotoStartResponse$Result;

.field public static final enum SUCCESS:Lcn/mucang/sundial/android/tcp/message/training/receive/UploadPhotoStartResponse$Result;

.field public static final enum UNKNOWN_ERROR:Lcn/mucang/sundial/android/tcp/message/training/receive/UploadPhotoStartResponse$Result;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v0, Lcn/mucang/sundial/android/tcp/message/training/receive/UploadPhotoStartResponse$Result;

    const-string v1, "SUCCESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcn/mucang/sundial/android/tcp/message/training/receive/UploadPhotoStartResponse$Result;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcn/mucang/sundial/android/tcp/message/training/receive/UploadPhotoStartResponse$Result;->SUCCESS:Lcn/mucang/sundial/android/tcp/message/training/receive/UploadPhotoStartResponse$Result;

    .line 2
    new-instance v1, Lcn/mucang/sundial/android/tcp/message/training/receive/UploadPhotoStartResponse$Result;

    const-string v3, "PHOTO_ID_ERROR"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcn/mucang/sundial/android/tcp/message/training/receive/UploadPhotoStartResponse$Result;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcn/mucang/sundial/android/tcp/message/training/receive/UploadPhotoStartResponse$Result;->PHOTO_ID_ERROR:Lcn/mucang/sundial/android/tcp/message/training/receive/UploadPhotoStartResponse$Result;

    .line 3
    new-instance v3, Lcn/mucang/sundial/android/tcp/message/training/receive/UploadPhotoStartResponse$Result;

    const-string v5, "UNKNOWN_ERROR"

    const/4 v6, 0x2

    const/16 v7, 0x9

    invoke-direct {v3, v5, v6, v7}, Lcn/mucang/sundial/android/tcp/message/training/receive/UploadPhotoStartResponse$Result;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcn/mucang/sundial/android/tcp/message/training/receive/UploadPhotoStartResponse$Result;->UNKNOWN_ERROR:Lcn/mucang/sundial/android/tcp/message/training/receive/UploadPhotoStartResponse$Result;

    .line 4
    new-instance v5, Lcn/mucang/sundial/android/tcp/message/training/receive/UploadPhotoStartResponse$Result;

    const-string v7, "REJECT"

    const/4 v8, 0x3

    const/16 v9, 0xff

    invoke-direct {v5, v7, v8, v9}, Lcn/mucang/sundial/android/tcp/message/training/receive/UploadPhotoStartResponse$Result;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcn/mucang/sundial/android/tcp/message/training/receive/UploadPhotoStartResponse$Result;->REJECT:Lcn/mucang/sundial/android/tcp/message/training/receive/UploadPhotoStartResponse$Result;

    const/4 v7, 0x4

    new-array v7, v7, [Lcn/mucang/sundial/android/tcp/message/training/receive/UploadPhotoStartResponse$Result;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 5
    sput-object v7, Lcn/mucang/sundial/android/tcp/message/training/receive/UploadPhotoStartResponse$Result;->$VALUES:[Lcn/mucang/sundial/android/tcp/message/training/receive/UploadPhotoStartResponse$Result;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcn/mucang/sundial/android/tcp/message/training/receive/UploadPhotoStartResponse$Result;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/mucang/sundial/android/tcp/message/training/receive/UploadPhotoStartResponse$Result;
    .locals 1

    .line 1
    const-class v0, Lcn/mucang/sundial/android/tcp/message/training/receive/UploadPhotoStartResponse$Result;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/mucang/sundial/android/tcp/message/training/receive/UploadPhotoStartResponse$Result;

    return-object p0
.end method

.method public static values()[Lcn/mucang/sundial/android/tcp/message/training/receive/UploadPhotoStartResponse$Result;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/sundial/android/tcp/message/training/receive/UploadPhotoStartResponse$Result;->$VALUES:[Lcn/mucang/sundial/android/tcp/message/training/receive/UploadPhotoStartResponse$Result;

    invoke-virtual {v0}, [Lcn/mucang/sundial/android/tcp/message/training/receive/UploadPhotoStartResponse$Result;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/mucang/sundial/android/tcp/message/training/receive/UploadPhotoStartResponse$Result;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/sundial/android/tcp/message/training/receive/UploadPhotoStartResponse$Result;->value:I

    return v0
.end method
