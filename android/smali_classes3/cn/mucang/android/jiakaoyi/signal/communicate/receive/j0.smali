.class public Lcn/mucang/android/jiakaoyi/signal/communicate/receive/j0;
.super Lcn/mucang/android/jiakaoyi/signal/communicate/receive/l;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I


# direct methods
.method public constructor <init>(ILcn/mucang/android/jiakaoyi/signal/communicate/r;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/l;-><init>(ILcn/mucang/android/jiakaoyi/signal/communicate/r;)V

    .line 2
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->o()I

    .line 3
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->o()I

    move-result p1

    iput p1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/j0;->a:I

    .line 4
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->o()I

    move-result p1

    iput p1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/j0;->b:I

    .line 5
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/j0;->a()Z

    move-result p1

    if-nez p1, :cond_0

    .line 6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "\u6d88\u606f0x28, "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/j0;->b:I

    invoke-virtual {p0, p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/j0;->b(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/j0;->b:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public b(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const-string p1, "\u65e0\u6548\u53c2\u6570"

    return-object p1

    :cond_0
    const-string p1, "\u5b50\u6a21\u5757\u5347\u7ea7\u5b8c\u6210\u65e0\u56de\u5e94"

    return-object p1

    :cond_1
    const-string p1, "\u5b50\u6a21\u5757\u65e0\u56de\u5e94"

    return-object p1

    :cond_2
    const-string p1, "crc\u6821\u9a8c\u9519\u8bef"

    return-object p1

    :cond_3
    const-string p1, "\u5347\u7ea7\u53c2\u6570\u4e0d\u5bf9"

    return-object p1
.end method
