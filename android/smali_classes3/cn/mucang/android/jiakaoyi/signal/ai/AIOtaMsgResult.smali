.class public Lcn/mucang/android/jiakaoyi/signal/ai/AIOtaMsgResult;
.super Lcn/mucang/android/jiakaoyi/signal/ai/AIRecognitionModel;
.source "SourceFile"


# static fields
.field public static final LoadFail:I = 0x2

.field public static final LoadSuccessButCheckFail:I = 0x3

.field public static final Loading:I = 0x0

.field public static final OtherError:I = 0x5

.field public static final SameVersion:I = 0x1

.field public static final StartOta:I = 0x4

.field public static final Success:I = 0xaa


# instance fields
.field public final desc:Ljava/lang/String;

.field public final msg:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/signal/ai/AIRecognitionModel;-><init>()V

    .line 2
    iput p1, p0, Lcn/mucang/android/jiakaoyi/signal/ai/AIOtaMsgResult;->msg:I

    .line 3
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/signal/ai/AIOtaMsgResult;->desc:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getMsgDesc()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/ai/AIOtaMsgResult;->desc:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    iget v0, p0, Lcn/mucang/android/jiakaoyi/signal/ai/AIOtaMsgResult;->msg:I

    if-eqz v0, :cond_5

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const-string v0, "\u672a\u77e5"

    return-object v0

    :cond_1
    const-string v0, "\u5f00\u59cb\u5347\u7ea7"

    return-object v0

    :cond_2
    const-string v0, "\u7248\u672c\u6821\u9a8c\u5931\u8d25"

    return-object v0

    :cond_3
    const-string v0, "\u6587\u4ef6\u4e0b\u8f7d\u5931\u8d25"

    return-object v0

    :cond_4
    const-string v0, "\u5df2\u662f\u6700\u65b0\u7248\u672c"

    return-object v0

    :cond_5
    const-string v0, "\u6b63\u5728\u4e0b\u8f7d"

    return-object v0
.end method
