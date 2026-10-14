.class public Lcn/mucang/android/jiakaoyi/signal/communicate/receive/s;
.super Lcn/mucang/android/jiakaoyi/signal/communicate/receive/m;
.source "SourceFile"


# instance fields
.field private b:Ljava/lang/String;

.field private c:I

.field private d:I

.field private e:Lcn/mucang/android/jiakaoyi/signal/communicate/r;


# direct methods
.method public constructor <init>(ILcn/mucang/android/jiakaoyi/signal/communicate/r;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/m;-><init>(ILcn/mucang/android/jiakaoyi/signal/communicate/r;)V

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/s;->c:I

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/s;->d:I

    .line 4
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->o()I

    move-result v0

    iput v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/s;->c:I

    .line 5
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/s;->e:Lcn/mucang/android/jiakaoyi/signal/communicate/r;

    and-int/lit16 p2, v0, 0xf0

    shr-int/lit8 p2, p2, 0x4

    and-int/lit8 v0, v0, 0xf

    .line 6
    iput p2, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/s;->d:I

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0x77 code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/s;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ; high_four "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " ; low_four "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    const/4 p2, 0x1

    if-nez v0, :cond_1

    .line 8
    iget v1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/s;->d:I

    if-eqz v1, :cond_0

    if-ne v1, p2, :cond_1

    :cond_0
    const/4 p1, 0x1

    :cond_1
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/m;->a:Z

    if-eqz p1, :cond_2

    const-string p1, "\u6210\u529f"

    .line 9
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/s;->b:Ljava/lang/String;

    goto :goto_0

    :cond_2
    if-ne v0, p2, :cond_3

    const-string p1, "\u5931\u8d25"

    .line 10
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/s;->b:Ljava/lang/String;

    goto :goto_0

    .line 11
    :cond_3
    iget p1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/s;->d:I

    if-eqz p1, :cond_4

    if-eq p1, p2, :cond_4

    const-string p1, "\u7b97\u6cd5\u7c7b\u578b\u9519\u8bef"

    .line 12
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/s;->b:Ljava/lang/String;

    goto :goto_0

    :cond_4
    const-string p1, "\u672a\u77e5"

    .line 13
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/s;->b:Ljava/lang/String;

    :goto_0
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/s;->d:I

    return v0
.end method

.method public b()Lcn/mucang/android/jiakaoyi/signal/communicate/r;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/s;->e:Lcn/mucang/android/jiakaoyi/signal/communicate/r;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/s;->b:Ljava/lang/String;

    return-object v0
.end method
