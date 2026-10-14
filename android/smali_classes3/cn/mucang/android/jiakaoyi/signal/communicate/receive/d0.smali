.class public Lcn/mucang/android/jiakaoyi/signal/communicate/receive/d0;
.super Lcn/mucang/android/jiakaoyi/signal/communicate/receive/m;
.source "SourceFile"


# instance fields
.field private b:Ljava/lang/String;

.field private c:I


# direct methods
.method public constructor <init>(ILcn/mucang/android/jiakaoyi/signal/communicate/r;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/m;-><init>(ILcn/mucang/android/jiakaoyi/signal/communicate/r;)V

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/d0;->c:I

    .line 3
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->o()I

    move-result p1

    iput p1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/d0;->c:I

    const/4 p2, 0x1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    :goto_0
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/m;->a:Z

    if-nez p1, :cond_1

    const-string p1, "\u6210\u529f"

    .line 5
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/d0;->b:Ljava/lang/String;

    goto :goto_1

    :cond_1
    if-ne p1, p2, :cond_2

    const-string p1, "\u5931\u8d25"

    .line 6
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/d0;->b:Ljava/lang/String;

    goto :goto_1

    :cond_2
    const/4 p2, 0x2

    if-ne p1, p2, :cond_3

    const-string p1, "\u6863\u4f4d\u987a\u5e8f\u4e0d\u5bf9"

    .line 7
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/d0;->b:Ljava/lang/String;

    goto :goto_1

    :cond_3
    const/4 p2, 0x3

    if-ne p1, p2, :cond_4

    const-string p1, "\u6863\u4f4d\u70b9\u8d85\u8fc730"

    .line 8
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/d0;->b:Ljava/lang/String;

    goto :goto_1

    :cond_4
    const-string p1, "\u672a\u77e5"

    .line 9
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/d0;->b:Ljava/lang/String;

    :goto_1
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/d0;->c:I

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/d0;->b:Ljava/lang/String;

    return-object v0
.end method
