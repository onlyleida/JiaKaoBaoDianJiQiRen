.class public final enum Lcn/mucang/sundial/android/tcp/upload/UploadMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/mucang/sundial/android/tcp/upload/UploadMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/mucang/sundial/android/tcp/upload/UploadMode;

.field public static final enum PLATFORM_QUERY:Lcn/mucang/sundial/android/tcp/upload/UploadMode;

.field public static final enum SERVER_ORDER_UPLOAD:Lcn/mucang/sundial/android/tcp/upload/UploadMode;

.field public static final enum STOP_TO_UPLOAD:Lcn/mucang/sundial/android/tcp/upload/UploadMode;

.field public static final enum TERMINAL_TAKE:Lcn/mucang/sundial/android/tcp/upload/UploadMode;

.field public static final enum TMP_SAVE_LOCAL:Lcn/mucang/sundial/android/tcp/upload/UploadMode;


# instance fields
.field value:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 1
    new-instance v0, Lcn/mucang/sundial/android/tcp/upload/UploadMode;

    const-string v1, "SERVER_ORDER_UPLOAD"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcn/mucang/sundial/android/tcp/upload/UploadMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcn/mucang/sundial/android/tcp/upload/UploadMode;->SERVER_ORDER_UPLOAD:Lcn/mucang/sundial/android/tcp/upload/UploadMode;

    new-instance v1, Lcn/mucang/sundial/android/tcp/upload/UploadMode;

    const-string v4, "PLATFORM_QUERY"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lcn/mucang/sundial/android/tcp/upload/UploadMode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcn/mucang/sundial/android/tcp/upload/UploadMode;->PLATFORM_QUERY:Lcn/mucang/sundial/android/tcp/upload/UploadMode;

    .line 2
    new-instance v4, Lcn/mucang/sundial/android/tcp/upload/UploadMode;

    const-string v6, "TERMINAL_TAKE"

    const/16 v7, 0x81

    invoke-direct {v4, v6, v5, v7}, Lcn/mucang/sundial/android/tcp/upload/UploadMode;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcn/mucang/sundial/android/tcp/upload/UploadMode;->TERMINAL_TAKE:Lcn/mucang/sundial/android/tcp/upload/UploadMode;

    new-instance v6, Lcn/mucang/sundial/android/tcp/upload/UploadMode;

    const-string v7, "STOP_TO_UPLOAD"

    const/4 v8, 0x3

    const/16 v9, 0xff

    invoke-direct {v6, v7, v8, v9}, Lcn/mucang/sundial/android/tcp/upload/UploadMode;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcn/mucang/sundial/android/tcp/upload/UploadMode;->STOP_TO_UPLOAD:Lcn/mucang/sundial/android/tcp/upload/UploadMode;

    .line 3
    new-instance v7, Lcn/mucang/sundial/android/tcp/upload/UploadMode;

    const-string v9, "TMP_SAVE_LOCAL"

    const/4 v10, 0x4

    const/4 v11, -0x1

    invoke-direct {v7, v9, v10, v11}, Lcn/mucang/sundial/android/tcp/upload/UploadMode;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcn/mucang/sundial/android/tcp/upload/UploadMode;->TMP_SAVE_LOCAL:Lcn/mucang/sundial/android/tcp/upload/UploadMode;

    const/4 v9, 0x5

    new-array v9, v9, [Lcn/mucang/sundial/android/tcp/upload/UploadMode;

    aput-object v0, v9, v2

    aput-object v1, v9, v3

    aput-object v4, v9, v5

    aput-object v6, v9, v8

    aput-object v7, v9, v10

    .line 4
    sput-object v9, Lcn/mucang/sundial/android/tcp/upload/UploadMode;->$VALUES:[Lcn/mucang/sundial/android/tcp/upload/UploadMode;

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
    iput p3, p0, Lcn/mucang/sundial/android/tcp/upload/UploadMode;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/mucang/sundial/android/tcp/upload/UploadMode;
    .locals 1

    .line 1
    const-class v0, Lcn/mucang/sundial/android/tcp/upload/UploadMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/mucang/sundial/android/tcp/upload/UploadMode;

    return-object p0
.end method

.method public static values()[Lcn/mucang/sundial/android/tcp/upload/UploadMode;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/sundial/android/tcp/upload/UploadMode;->$VALUES:[Lcn/mucang/sundial/android/tcp/upload/UploadMode;

    invoke-virtual {v0}, [Lcn/mucang/sundial/android/tcp/upload/UploadMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/mucang/sundial/android/tcp/upload/UploadMode;

    return-object v0
.end method


# virtual methods
.method public valueOf()I
    .locals 1

    .line 2
    iget v0, p0, Lcn/mucang/sundial/android/tcp/upload/UploadMode;->value:I

    return v0
.end method
