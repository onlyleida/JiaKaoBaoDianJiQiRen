.class public final enum Lcn/mucang/android/jiakaoyi/framework/qrcode/zxing/ErrorCorrectionLevel;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/mucang/android/jiakaoyi/framework/qrcode/zxing/ErrorCorrectionLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/mucang/android/jiakaoyi/framework/qrcode/zxing/ErrorCorrectionLevel;

.field private static final FOR_BITS:[Lcn/mucang/android/jiakaoyi/framework/qrcode/zxing/ErrorCorrectionLevel;

.field public static final enum H:Lcn/mucang/android/jiakaoyi/framework/qrcode/zxing/ErrorCorrectionLevel;

.field public static final enum L:Lcn/mucang/android/jiakaoyi/framework/qrcode/zxing/ErrorCorrectionLevel;

.field public static final enum M:Lcn/mucang/android/jiakaoyi/framework/qrcode/zxing/ErrorCorrectionLevel;

.field public static final enum Q:Lcn/mucang/android/jiakaoyi/framework/qrcode/zxing/ErrorCorrectionLevel;


# instance fields
.field private final bits:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/qrcode/zxing/ErrorCorrectionLevel;

    const-string v1, "L"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcn/mucang/android/jiakaoyi/framework/qrcode/zxing/ErrorCorrectionLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/framework/qrcode/zxing/ErrorCorrectionLevel;->L:Lcn/mucang/android/jiakaoyi/framework/qrcode/zxing/ErrorCorrectionLevel;

    .line 2
    new-instance v1, Lcn/mucang/android/jiakaoyi/framework/qrcode/zxing/ErrorCorrectionLevel;

    const-string v4, "M"

    invoke-direct {v1, v4, v3, v2}, Lcn/mucang/android/jiakaoyi/framework/qrcode/zxing/ErrorCorrectionLevel;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcn/mucang/android/jiakaoyi/framework/qrcode/zxing/ErrorCorrectionLevel;->M:Lcn/mucang/android/jiakaoyi/framework/qrcode/zxing/ErrorCorrectionLevel;

    .line 3
    new-instance v4, Lcn/mucang/android/jiakaoyi/framework/qrcode/zxing/ErrorCorrectionLevel;

    const-string v5, "Q"

    const/4 v6, 0x2

    const/4 v7, 0x3

    invoke-direct {v4, v5, v6, v7}, Lcn/mucang/android/jiakaoyi/framework/qrcode/zxing/ErrorCorrectionLevel;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcn/mucang/android/jiakaoyi/framework/qrcode/zxing/ErrorCorrectionLevel;->Q:Lcn/mucang/android/jiakaoyi/framework/qrcode/zxing/ErrorCorrectionLevel;

    .line 4
    new-instance v5, Lcn/mucang/android/jiakaoyi/framework/qrcode/zxing/ErrorCorrectionLevel;

    const-string v8, "H"

    invoke-direct {v5, v8, v7, v6}, Lcn/mucang/android/jiakaoyi/framework/qrcode/zxing/ErrorCorrectionLevel;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcn/mucang/android/jiakaoyi/framework/qrcode/zxing/ErrorCorrectionLevel;->H:Lcn/mucang/android/jiakaoyi/framework/qrcode/zxing/ErrorCorrectionLevel;

    const/4 v8, 0x4

    new-array v9, v8, [Lcn/mucang/android/jiakaoyi/framework/qrcode/zxing/ErrorCorrectionLevel;

    aput-object v0, v9, v2

    aput-object v1, v9, v3

    aput-object v4, v9, v6

    aput-object v5, v9, v7

    .line 5
    sput-object v9, Lcn/mucang/android/jiakaoyi/framework/qrcode/zxing/ErrorCorrectionLevel;->$VALUES:[Lcn/mucang/android/jiakaoyi/framework/qrcode/zxing/ErrorCorrectionLevel;

    new-array v8, v8, [Lcn/mucang/android/jiakaoyi/framework/qrcode/zxing/ErrorCorrectionLevel;

    aput-object v1, v8, v2

    aput-object v0, v8, v3

    aput-object v5, v8, v6

    aput-object v4, v8, v7

    .line 6
    sput-object v8, Lcn/mucang/android/jiakaoyi/framework/qrcode/zxing/ErrorCorrectionLevel;->FOR_BITS:[Lcn/mucang/android/jiakaoyi/framework/qrcode/zxing/ErrorCorrectionLevel;

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
    iput p3, p0, Lcn/mucang/android/jiakaoyi/framework/qrcode/zxing/ErrorCorrectionLevel;->bits:I

    return-void
.end method

.method public static forBits(I)Lcn/mucang/android/jiakaoyi/framework/qrcode/zxing/ErrorCorrectionLevel;
    .locals 2

    if-ltz p0, :cond_0

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/qrcode/zxing/ErrorCorrectionLevel;->FOR_BITS:[Lcn/mucang/android/jiakaoyi/framework/qrcode/zxing/ErrorCorrectionLevel;

    array-length v1, v0

    if-ge p0, v1, :cond_0

    .line 2
    aget-object p0, v0, p0

    return-object p0

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/framework/qrcode/zxing/ErrorCorrectionLevel;
    .locals 1

    .line 1
    const-class v0, Lcn/mucang/android/jiakaoyi/framework/qrcode/zxing/ErrorCorrectionLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/framework/qrcode/zxing/ErrorCorrectionLevel;

    return-object p0
.end method

.method public static values()[Lcn/mucang/android/jiakaoyi/framework/qrcode/zxing/ErrorCorrectionLevel;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/qrcode/zxing/ErrorCorrectionLevel;->$VALUES:[Lcn/mucang/android/jiakaoyi/framework/qrcode/zxing/ErrorCorrectionLevel;

    invoke-virtual {v0}, [Lcn/mucang/android/jiakaoyi/framework/qrcode/zxing/ErrorCorrectionLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/mucang/android/jiakaoyi/framework/qrcode/zxing/ErrorCorrectionLevel;

    return-object v0
.end method


# virtual methods
.method public getBits()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/framework/qrcode/zxing/ErrorCorrectionLevel;->bits:I

    return v0
.end method
