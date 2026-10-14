.class public Lcn/mucang/android/jiakaoyi/signal/communicate/receive/i0;
.super Lcn/mucang/android/jiakaoyi/signal/communicate/receive/l;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:B


# direct methods
.method public constructor <init>(ILcn/mucang/android/jiakaoyi/signal/communicate/r;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/l;-><init>(ILcn/mucang/android/jiakaoyi/signal/communicate/r;)V

    .line 2
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->j()I

    move-result p1

    iput p1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/i0;->a:I

    .line 3
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->e()B

    move-result p1

    iput-byte p1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/i0;->b:B

    .line 4
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/i0;->b()Z

    move-result p2

    if-nez p2, :cond_0

    .line 5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u6d88\u606f0x23, "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/i0;->c(B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private c(B)Ljava/lang/String;
    .locals 0

    packed-switch p1, :pswitch_data_0

    const-string p1, "\u672a\u77e5"

    return-object p1

    :pswitch_0
    const-string p1, "\u547d\u4ee4\u7c7b\u578b\u9519\u8bef"

    return-object p1

    :pswitch_1
    const-string p1, "\u957f\u5ea6\u9519\u8bef"

    return-object p1

    :pswitch_2
    const-string p1, "\u8d85\u65f6"

    return-object p1

    :pswitch_3
    const-string p1, "\u5305\u9519\u8bef"

    return-object p1

    :pswitch_4
    const-string p1, "OBD\u9519\u8bef"

    return-object p1

    :pswitch_5
    const-string p1, "\u5305\u5e8f\u53f7\u9519\u8bef"

    return-object p1

    :pswitch_6
    const-string p1, "crc\u6821\u9a8c\u9519\u8bef"

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public a()Z
    .locals 3

    .line 1
    iget-byte v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/i0;->b:B

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x5

    if-eq v0, v2, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x6

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public b()Z
    .locals 1

    .line 1
    iget-byte v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/i0;->b:B

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
