.class public final enum Lcn/mucang/sundial/android/tcp/message/training/receive/UploadPhotoResultResponse$Result;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/sundial/android/tcp/message/training/receive/UploadPhotoResultResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Result"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/mucang/sundial/android/tcp/message/training/receive/UploadPhotoResultResponse$Result;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/mucang/sundial/android/tcp/message/training/receive/UploadPhotoResultResponse$Result;

.field public static final enum FACE_ERROR:Lcn/mucang/sundial/android/tcp/message/training/receive/UploadPhotoResultResponse$Result;

.field public static final enum LIVE_ERROR:Lcn/mucang/sundial/android/tcp/message/training/receive/UploadPhotoResultResponse$Result;

.field public static final enum SUCCESS:Lcn/mucang/sundial/android/tcp/message/training/receive/UploadPhotoResultResponse$Result;

.field public static final enum UNKNOWN_ERROR:Lcn/mucang/sundial/android/tcp/message/training/receive/UploadPhotoResultResponse$Result;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v0, Lcn/mucang/sundial/android/tcp/message/training/receive/UploadPhotoResultResponse$Result;

    const-string v1, "SUCCESS"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcn/mucang/sundial/android/tcp/message/training/receive/UploadPhotoResultResponse$Result;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcn/mucang/sundial/android/tcp/message/training/receive/UploadPhotoResultResponse$Result;->SUCCESS:Lcn/mucang/sundial/android/tcp/message/training/receive/UploadPhotoResultResponse$Result;

    .line 2
    new-instance v1, Lcn/mucang/sundial/android/tcp/message/training/receive/UploadPhotoResultResponse$Result;

    const-string v4, "FACE_ERROR"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lcn/mucang/sundial/android/tcp/message/training/receive/UploadPhotoResultResponse$Result;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcn/mucang/sundial/android/tcp/message/training/receive/UploadPhotoResultResponse$Result;->FACE_ERROR:Lcn/mucang/sundial/android/tcp/message/training/receive/UploadPhotoResultResponse$Result;

    .line 3
    new-instance v4, Lcn/mucang/sundial/android/tcp/message/training/receive/UploadPhotoResultResponse$Result;

    const-string v6, "LIVE_ERROR"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v5, v7}, Lcn/mucang/sundial/android/tcp/message/training/receive/UploadPhotoResultResponse$Result;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcn/mucang/sundial/android/tcp/message/training/receive/UploadPhotoResultResponse$Result;->LIVE_ERROR:Lcn/mucang/sundial/android/tcp/message/training/receive/UploadPhotoResultResponse$Result;

    .line 4
    new-instance v6, Lcn/mucang/sundial/android/tcp/message/training/receive/UploadPhotoResultResponse$Result;

    const-string v8, "UNKNOWN_ERROR"

    const/16 v9, 0x9

    invoke-direct {v6, v8, v7, v9}, Lcn/mucang/sundial/android/tcp/message/training/receive/UploadPhotoResultResponse$Result;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcn/mucang/sundial/android/tcp/message/training/receive/UploadPhotoResultResponse$Result;->UNKNOWN_ERROR:Lcn/mucang/sundial/android/tcp/message/training/receive/UploadPhotoResultResponse$Result;

    const/4 v8, 0x4

    new-array v8, v8, [Lcn/mucang/sundial/android/tcp/message/training/receive/UploadPhotoResultResponse$Result;

    aput-object v0, v8, v2

    aput-object v1, v8, v3

    aput-object v4, v8, v5

    aput-object v6, v8, v7

    .line 5
    sput-object v8, Lcn/mucang/sundial/android/tcp/message/training/receive/UploadPhotoResultResponse$Result;->$VALUES:[Lcn/mucang/sundial/android/tcp/message/training/receive/UploadPhotoResultResponse$Result;

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
    iput p3, p0, Lcn/mucang/sundial/android/tcp/message/training/receive/UploadPhotoResultResponse$Result;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/mucang/sundial/android/tcp/message/training/receive/UploadPhotoResultResponse$Result;
    .locals 1

    .line 1
    const-class v0, Lcn/mucang/sundial/android/tcp/message/training/receive/UploadPhotoResultResponse$Result;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/mucang/sundial/android/tcp/message/training/receive/UploadPhotoResultResponse$Result;

    return-object p0
.end method

.method public static values()[Lcn/mucang/sundial/android/tcp/message/training/receive/UploadPhotoResultResponse$Result;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/sundial/android/tcp/message/training/receive/UploadPhotoResultResponse$Result;->$VALUES:[Lcn/mucang/sundial/android/tcp/message/training/receive/UploadPhotoResultResponse$Result;

    invoke-virtual {v0}, [Lcn/mucang/sundial/android/tcp/message/training/receive/UploadPhotoResultResponse$Result;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/mucang/sundial/android/tcp/message/training/receive/UploadPhotoResultResponse$Result;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/sundial/android/tcp/message/training/receive/UploadPhotoResultResponse$Result;->value:I

    return v0
.end method
