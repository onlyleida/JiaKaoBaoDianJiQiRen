.class public final enum Lcn/mucang/sundial/android/tcp/message/training/send/TakePhotoResponse$Result;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/sundial/android/tcp/message/training/send/TakePhotoResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Result"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/mucang/sundial/android/tcp/message/training/send/TakePhotoResponse$Result;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/mucang/sundial/android/tcp/message/training/send/TakePhotoResponse$Result;

.field public static final enum FAIL:Lcn/mucang/sundial/android/tcp/message/training/send/TakePhotoResponse$Result;

.field public static final enum OTHER_ERROR:Lcn/mucang/sundial/android/tcp/message/training/send/TakePhotoResponse$Result;

.field public static final enum QUERYING:Lcn/mucang/sundial/android/tcp/message/training/send/TakePhotoResponse$Result;

.field public static final enum RE_CONNECT:Lcn/mucang/sundial/android/tcp/message/training/send/TakePhotoResponse$Result;

.field public static final enum SD_ERROR:Lcn/mucang/sundial/android/tcp/message/training/send/TakePhotoResponse$Result;

.field public static final enum TAKE:Lcn/mucang/sundial/android/tcp/message/training/send/TakePhotoResponse$Result;

.field public static final enum TAKING:Lcn/mucang/sundial/android/tcp/message/training/send/TakePhotoResponse$Result;


# instance fields
.field value:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcn/mucang/sundial/android/tcp/message/training/send/TakePhotoResponse$Result;

    const-string v1, "TAKE"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcn/mucang/sundial/android/tcp/message/training/send/TakePhotoResponse$Result;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcn/mucang/sundial/android/tcp/message/training/send/TakePhotoResponse$Result;->TAKE:Lcn/mucang/sundial/android/tcp/message/training/send/TakePhotoResponse$Result;

    new-instance v1, Lcn/mucang/sundial/android/tcp/message/training/send/TakePhotoResponse$Result;

    const-string v4, "FAIL"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lcn/mucang/sundial/android/tcp/message/training/send/TakePhotoResponse$Result;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcn/mucang/sundial/android/tcp/message/training/send/TakePhotoResponse$Result;->FAIL:Lcn/mucang/sundial/android/tcp/message/training/send/TakePhotoResponse$Result;

    new-instance v4, Lcn/mucang/sundial/android/tcp/message/training/send/TakePhotoResponse$Result;

    const-string v6, "SD_ERROR"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v5, v7}, Lcn/mucang/sundial/android/tcp/message/training/send/TakePhotoResponse$Result;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcn/mucang/sundial/android/tcp/message/training/send/TakePhotoResponse$Result;->SD_ERROR:Lcn/mucang/sundial/android/tcp/message/training/send/TakePhotoResponse$Result;

    new-instance v6, Lcn/mucang/sundial/android/tcp/message/training/send/TakePhotoResponse$Result;

    const-string v8, "TAKING"

    const/4 v9, 0x4

    invoke-direct {v6, v8, v7, v9}, Lcn/mucang/sundial/android/tcp/message/training/send/TakePhotoResponse$Result;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcn/mucang/sundial/android/tcp/message/training/send/TakePhotoResponse$Result;->TAKING:Lcn/mucang/sundial/android/tcp/message/training/send/TakePhotoResponse$Result;

    new-instance v8, Lcn/mucang/sundial/android/tcp/message/training/send/TakePhotoResponse$Result;

    const-string v10, "RE_CONNECT"

    const/4 v11, 0x5

    invoke-direct {v8, v10, v9, v11}, Lcn/mucang/sundial/android/tcp/message/training/send/TakePhotoResponse$Result;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcn/mucang/sundial/android/tcp/message/training/send/TakePhotoResponse$Result;->RE_CONNECT:Lcn/mucang/sundial/android/tcp/message/training/send/TakePhotoResponse$Result;

    .line 2
    new-instance v10, Lcn/mucang/sundial/android/tcp/message/training/send/TakePhotoResponse$Result;

    const-string v12, "QUERYING"

    const/4 v13, 0x6

    invoke-direct {v10, v12, v11, v13}, Lcn/mucang/sundial/android/tcp/message/training/send/TakePhotoResponse$Result;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcn/mucang/sundial/android/tcp/message/training/send/TakePhotoResponse$Result;->QUERYING:Lcn/mucang/sundial/android/tcp/message/training/send/TakePhotoResponse$Result;

    new-instance v12, Lcn/mucang/sundial/android/tcp/message/training/send/TakePhotoResponse$Result;

    const-string v14, "OTHER_ERROR"

    const/16 v15, 0x9

    invoke-direct {v12, v14, v13, v15}, Lcn/mucang/sundial/android/tcp/message/training/send/TakePhotoResponse$Result;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcn/mucang/sundial/android/tcp/message/training/send/TakePhotoResponse$Result;->OTHER_ERROR:Lcn/mucang/sundial/android/tcp/message/training/send/TakePhotoResponse$Result;

    const/4 v14, 0x7

    new-array v14, v14, [Lcn/mucang/sundial/android/tcp/message/training/send/TakePhotoResponse$Result;

    aput-object v0, v14, v2

    aput-object v1, v14, v3

    aput-object v4, v14, v5

    aput-object v6, v14, v7

    aput-object v8, v14, v9

    aput-object v10, v14, v11

    aput-object v12, v14, v13

    .line 3
    sput-object v14, Lcn/mucang/sundial/android/tcp/message/training/send/TakePhotoResponse$Result;->$VALUES:[Lcn/mucang/sundial/android/tcp/message/training/send/TakePhotoResponse$Result;

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
    iput p3, p0, Lcn/mucang/sundial/android/tcp/message/training/send/TakePhotoResponse$Result;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/mucang/sundial/android/tcp/message/training/send/TakePhotoResponse$Result;
    .locals 1

    .line 1
    const-class v0, Lcn/mucang/sundial/android/tcp/message/training/send/TakePhotoResponse$Result;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/mucang/sundial/android/tcp/message/training/send/TakePhotoResponse$Result;

    return-object p0
.end method

.method public static values()[Lcn/mucang/sundial/android/tcp/message/training/send/TakePhotoResponse$Result;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/sundial/android/tcp/message/training/send/TakePhotoResponse$Result;->$VALUES:[Lcn/mucang/sundial/android/tcp/message/training/send/TakePhotoResponse$Result;

    invoke-virtual {v0}, [Lcn/mucang/sundial/android/tcp/message/training/send/TakePhotoResponse$Result;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/mucang/sundial/android/tcp/message/training/send/TakePhotoResponse$Result;

    return-object v0
.end method


# virtual methods
.method public valueOf()I
    .locals 1

    .line 2
    iget v0, p0, Lcn/mucang/sundial/android/tcp/message/training/send/TakePhotoResponse$Result;->value:I

    return v0
.end method
