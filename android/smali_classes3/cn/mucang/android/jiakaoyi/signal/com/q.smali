.class public Lcn/mucang/android/jiakaoyi/signal/com/q;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static synthetic a(II)[B
    .locals 2

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/communicate/v;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;-><init>(Z)V

    int-to-byte p0, p0

    .line 2
    invoke-virtual {v0, p0}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->c(B)V

    int-to-short p0, p1

    .line 3
    invoke-virtual {v0, p0}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->h(S)V

    .line 4
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->b()[B

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lcn/mucang/android/jiakaoyi/framework/h/b;Lcn/mucang/android/jiakaoyi/signal/communicate/receive/i;)V
    .locals 0

    .line 1
    invoke-interface {p0, p1}, Lcn/mucang/android/jiakaoyi/framework/h/b;->callback(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic c(I)[B
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [B

    int-to-byte p0, p0

    const/4 v1, 0x0

    aput-byte p0, v0, v1

    return-object v0
.end method

.method static synthetic d(BZBB)[B
    .locals 2

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/communicate/v;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;-><init>(Z)V

    .line 2
    invoke-virtual {v0, p0}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->c(B)V

    if-nez p1, :cond_0

    .line 3
    invoke-virtual {v0, p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->c(B)V

    .line 4
    :cond_0
    invoke-virtual {v0, p3}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->c(B)V

    .line 5
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->b()[B

    move-result-object p0

    return-object p0
.end method

.method static synthetic e(Lcn/mucang/android/jiakaoyi/signal/com/Cmd;I)Lkotlin/v;
    .locals 2

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->h()Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;

    move-result-object v0

    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/com/e;

    invoke-direct {v1, p1}, Lcn/mucang/android/jiakaoyi/signal/com/e;-><init>(I)V

    invoke-virtual {v0, p0, v1}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->P(Lcn/mucang/android/jiakaoyi/signal/com/Cmd;Lcn/mucang/android/jiakaoyi/signal/com/x/b;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u6807\u5b9a\u6307\u4ee4\u4e0b\u53d1\u5931\u8d25:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lcn/mucang/android/jiakaoyi/signal/com/Cmd;->order:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/signal/com/Cmd;->desc:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", type = "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic f(Lcn/mucang/android/jiakaoyi/signal/com/Cmd;I)Lkotlin/v;
    .locals 2

    const-string v0, "\u6807\u5b9a\u6307\u4ee4\u4e0b\u53d1\u8d85\u65f6"

    .line 1
    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u6807\u5b9a\u6307\u4ee4\u4e0b\u53d1\u8d85\u65f6:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lcn/mucang/android/jiakaoyi/signal/com/Cmd;->order:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/signal/com/Cmd;->desc:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", type = "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic g(Lcn/mucang/android/jiakaoyi/signal/com/Cmd;ILcn/mucang/android/jiakaoyi/signal/communicate/receive/i;)Lkotlin/v;
    .locals 3

    .line 1
    iget-boolean p2, p2, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/m;->a:Z

    const-string v0, ", type = "

    const-string v1, ","

    if-eqz p2, :cond_0

    const-string p2, "\u6807\u5b9a\u6307\u4ee4\u4e0b\u53d1\u6210\u529f"

    .line 2
    invoke-static {p2}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6807\u5b9a\u6307\u4ee4\u4e0b\u53d1\u6210\u529f:"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v2, p0, Lcn/mucang/android/jiakaoyi/signal/com/Cmd;->order:B

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/signal/com/Cmd;->desc:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p2, "\u6807\u5b9a\u6307\u4ee4\u4e0b\u53d1\u5931\u8d25"

    .line 4
    invoke-static {p2}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6807\u5b9a\u6307\u4ee4\u4e0b\u53d1\u5931\u8d25:"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v2, p0, Lcn/mucang/android/jiakaoyi/signal/com/Cmd;->order:B

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/signal/com/Cmd;->desc:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic h(Lcn/mucang/android/jiakaoyi/signal/com/Cmd;II)Lkotlin/v;
    .locals 2

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->h()Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;

    move-result-object v0

    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/com/b;

    invoke-direct {v1, p1, p2}, Lcn/mucang/android/jiakaoyi/signal/com/b;-><init>(II)V

    invoke-virtual {v0, p0, v1}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->P(Lcn/mucang/android/jiakaoyi/signal/com/Cmd;Lcn/mucang/android/jiakaoyi/signal/com/x/b;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u65b9\u5411\u76d8\u6807\u5b9a\u6307\u4ee4\u4e0b\u53d1\u5931\u8d25:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lcn/mucang/android/jiakaoyi/signal/com/Cmd;->order:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/signal/com/Cmd;->desc:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", type = "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ",degree="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic i(Lcn/mucang/android/jiakaoyi/signal/com/Cmd;II)Lkotlin/v;
    .locals 2

    const-string v0, "\u6807\u5b9a\u6307\u4ee4\u4e0b\u53d1\u8d85\u65f6"

    .line 1
    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u65b9\u5411\u76d8\u6807\u5b9a\u6307\u4ee4\u4e0b\u53d1\u8d85\u65f6:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lcn/mucang/android/jiakaoyi/signal/com/Cmd;->order:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/signal/com/Cmd;->desc:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", type = "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ",degree="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic j(Lcn/mucang/android/jiakaoyi/framework/h/b;Lcn/mucang/android/jiakaoyi/signal/com/Cmd;IILcn/mucang/android/jiakaoyi/signal/communicate/receive/i;)Lkotlin/v;
    .locals 4

    .line 1
    iget-boolean v0, p4, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/m;->a:Z

    const-string v1, ",degree="

    const-string v2, ", type = "

    const-string v3, ","

    if-eqz v0, :cond_1

    if-eqz p0, :cond_0

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/com/l;

    invoke-direct {v0, p0, p4}, Lcn/mucang/android/jiakaoyi/signal/com/l;-><init>(Lcn/mucang/android/jiakaoyi/framework/h/b;Lcn/mucang/android/jiakaoyi/signal/communicate/receive/i;)V

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "\u65b9\u5411\u76d8\u6807\u5b9a\u6307\u4ee4\u4e0b\u53d1\u6210\u529f:"

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte p4, p1, Lcn/mucang/android/jiakaoyi/signal/com/Cmd;->order:B

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/signal/com/Cmd;->desc:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    const-string p0, "\u6807\u5b9a\u6307\u4ee4\u4e0b\u53d1\u6210\u529f"

    .line 4
    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "\u65b9\u5411\u76d8\u6807\u5b9a\u6307\u4ee4\u4e0b\u53d1\u5931\u8d25:"

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte p4, p1, Lcn/mucang/android/jiakaoyi/signal/com/Cmd;->order:B

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/signal/com/Cmd;->desc:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    const-string p0, "\u6807\u5b9a\u6307\u4ee4\u4e0b\u53d1\u5931\u8d25"

    .line 6
    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic k(Lcn/mucang/android/jiakaoyi/signal/com/Cmd;BZBBLjava/lang/String;Ljava/lang/String;)Lkotlin/v;
    .locals 2

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->h()Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;

    move-result-object v0

    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/com/k;

    invoke-direct {v1, p1, p2, p3, p4}, Lcn/mucang/android/jiakaoyi/signal/com/k;-><init>(BZBB)V

    invoke-virtual {v0, p0, v1}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->P(Lcn/mucang/android/jiakaoyi/signal/com/Cmd;Lcn/mucang/android/jiakaoyi/signal/com/x/b;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\u4e0b\u53d1\u5931\u8d25:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte p2, p0, Lcn/mucang/android/jiakaoyi/signal/com/Cmd;->order:B

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ","

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/signal/com/Cmd;->desc:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", value = "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic l(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/signal/com/Cmd;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/h/b;)Lkotlin/v;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\u4e0b\u53d1\u8d85\u65f6:"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte p0, p1, Lcn/mucang/android/jiakaoyi/signal/com/Cmd;->order:B

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ","

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p1, Lcn/mucang/android/jiakaoyi/signal/com/Cmd;->desc:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", value = "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    const-string p0, "\u6807\u5b9a\u6307\u4ee4\u4e0b\u53d1\u8d85\u65f6"

    .line 2
    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 3
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p3, p0}, Lcn/mucang/android/jiakaoyi/framework/h/b;->callback(Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic m(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/signal/com/Cmd;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/h/b;Lcn/mucang/android/jiakaoyi/signal/communicate/receive/i;)Lkotlin/v;
    .locals 2

    .line 1
    iget-boolean p4, p4, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/m;->a:Z

    const-string v0, ", value = "

    const-string v1, ","

    if-eqz p4, :cond_0

    .line 2
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\u4e0b\u53d1\u6210\u529f:"

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte p0, p1, Lcn/mucang/android/jiakaoyi/signal/com/Cmd;->order:B

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p1, Lcn/mucang/android/jiakaoyi/signal/com/Cmd;->desc:Ljava/lang/String;

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    const-string p0, "\u6807\u5b9a\u6307\u4ee4\u4e0b\u53d1\u6210\u529f"

    .line 3
    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 4
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p3, p0}, Lcn/mucang/android/jiakaoyi/framework/h/b;->callback(Ljava/lang/Object;)V

    goto :goto_0

    .line 5
    :cond_0
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\u4e0b\u53d1\u5931\u8d25:"

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte p0, p1, Lcn/mucang/android/jiakaoyi/signal/com/Cmd;->order:B

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p1, Lcn/mucang/android/jiakaoyi/signal/com/Cmd;->desc:Ljava/lang/String;

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    const-string p0, "\u6807\u5b9a\u6307\u4ee4\u4e0b\u53d1\u5931\u8d25"

    .line 6
    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 7
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p3, p0}, Lcn/mucang/android/jiakaoyi/framework/h/b;->callback(Ljava/lang/Object;)V

    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static n(Lcn/mucang/android/jiakaoyi/signal/com/Cmd;I)V
    .locals 9

    .line 1
    new-instance v8, Lcn/mucang/android/jiakaoyi/signal/communicate/q;

    const-class v1, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/i;

    new-instance v5, Lcn/mucang/android/jiakaoyi/signal/com/h;

    invoke-direct {v5, p0, p1}, Lcn/mucang/android/jiakaoyi/signal/com/h;-><init>(Lcn/mucang/android/jiakaoyi/signal/com/Cmd;I)V

    new-instance v6, Lcn/mucang/android/jiakaoyi/signal/com/a;

    invoke-direct {v6, p0, p1}, Lcn/mucang/android/jiakaoyi/signal/com/a;-><init>(Lcn/mucang/android/jiakaoyi/signal/com/Cmd;I)V

    new-instance v7, Lcn/mucang/android/jiakaoyi/signal/com/g;

    invoke-direct {v7, p0, p1}, Lcn/mucang/android/jiakaoyi/signal/com/g;-><init>(Lcn/mucang/android/jiakaoyi/signal/com/Cmd;I)V

    const/4 v2, 0x0

    const-wide/16 v3, 0xbb8

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcn/mucang/android/jiakaoyi/signal/communicate/q;-><init>(Ljava/lang/Class;IJLkotlin/jvm/b/a;Lkotlin/jvm/b/a;Lkotlin/jvm/b/l;)V

    .line 2
    invoke-virtual {v8}, Lcn/mucang/android/jiakaoyi/signal/communicate/q;->i()V

    return-void
.end method

.method public static o(Lcn/mucang/android/jiakaoyi/signal/com/Cmd;IILcn/mucang/android/jiakaoyi/framework/h/b;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/signal/com/Cmd;",
            "II",
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "Lcn/mucang/android/jiakaoyi/signal/communicate/receive/i;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v8, Lcn/mucang/android/jiakaoyi/signal/communicate/q;

    const-class v1, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/i;

    new-instance v5, Lcn/mucang/android/jiakaoyi/signal/com/i;

    invoke-direct {v5, p0, p1, p2}, Lcn/mucang/android/jiakaoyi/signal/com/i;-><init>(Lcn/mucang/android/jiakaoyi/signal/com/Cmd;II)V

    new-instance v6, Lcn/mucang/android/jiakaoyi/signal/com/m;

    invoke-direct {v6, p0, p1, p2}, Lcn/mucang/android/jiakaoyi/signal/com/m;-><init>(Lcn/mucang/android/jiakaoyi/signal/com/Cmd;II)V

    new-instance v7, Lcn/mucang/android/jiakaoyi/signal/com/c;

    invoke-direct {v7, p3, p0, p1, p2}, Lcn/mucang/android/jiakaoyi/signal/com/c;-><init>(Lcn/mucang/android/jiakaoyi/framework/h/b;Lcn/mucang/android/jiakaoyi/signal/com/Cmd;II)V

    const/4 v2, 0x0

    const-wide/16 v3, 0x3e8

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcn/mucang/android/jiakaoyi/signal/communicate/q;-><init>(Ljava/lang/Class;IJLkotlin/jvm/b/a;Lkotlin/jvm/b/a;Lkotlin/jvm/b/l;)V

    .line 2
    invoke-virtual {v8}, Lcn/mucang/android/jiakaoyi/signal/communicate/q;->i()V

    return-void
.end method

.method public static p(ZBBBLcn/mucang/android/jiakaoyi/framework/h/b;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZBBB",
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    move/from16 v2, p1

    move/from16 v5, p3

    move-object/from16 v8, p4

    if-eqz p0, :cond_0

    const-string v0, "\u81ea\u52a8\u7535\u673a\u6807\u5b9a"

    goto :goto_0

    :cond_0
    const-string v0, "\u624b\u52a8\u7535\u673a\u6807\u5b9a"

    :goto_0
    move-object v9, v0

    const-string v0, ", "

    .line 1
    new-instance v1, Ljava/lang/StringBuilder;

    if-eqz p0, :cond_1

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move/from16 v4, p2

    goto :goto_1

    :cond_1
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v4, p2

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    move-object v10, v0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    if-eqz p0, :cond_2

    .line 3
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/com/Cmd;->OrderAutoMotorCalibration:Lcn/mucang/android/jiakaoyi/signal/com/Cmd;

    goto :goto_2

    :cond_2
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/com/Cmd;->OrderManualMotorCalibration:Lcn/mucang/android/jiakaoyi/signal/com/Cmd;

    :goto_2
    move-object v11, v0

    .line 4
    new-instance v12, Lcn/mucang/android/jiakaoyi/signal/communicate/q;

    const-class v13, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/i;

    const/4 v14, 0x0

    const-wide/16 v15, 0x1f40

    new-instance v17, Lcn/mucang/android/jiakaoyi/signal/com/f;

    move-object/from16 v0, v17

    move-object v1, v11

    move/from16 v2, p1

    move/from16 v3, p0

    move/from16 v4, p2

    move/from16 v5, p3

    move-object v6, v9

    move-object v7, v10

    invoke-direct/range {v0 .. v7}, Lcn/mucang/android/jiakaoyi/signal/com/f;-><init>(Lcn/mucang/android/jiakaoyi/signal/com/Cmd;BZBBLjava/lang/String;Ljava/lang/String;)V

    new-instance v6, Lcn/mucang/android/jiakaoyi/signal/com/d;

    invoke-direct {v6, v9, v11, v10, v8}, Lcn/mucang/android/jiakaoyi/signal/com/d;-><init>(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/signal/com/Cmd;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/h/b;)V

    new-instance v7, Lcn/mucang/android/jiakaoyi/signal/com/j;

    invoke-direct {v7, v9, v11, v10, v8}, Lcn/mucang/android/jiakaoyi/signal/com/j;-><init>(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/signal/com/Cmd;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/h/b;)V

    move-object v0, v12

    move-object v1, v13

    move v2, v14

    move-wide v3, v15

    move-object/from16 v5, v17

    invoke-direct/range {v0 .. v7}, Lcn/mucang/android/jiakaoyi/signal/communicate/q;-><init>(Ljava/lang/Class;IJLkotlin/jvm/b/a;Lkotlin/jvm/b/a;Lkotlin/jvm/b/l;)V

    .line 5
    invoke-virtual {v12}, Lcn/mucang/android/jiakaoyi/signal/communicate/q;->i()V

    return-void
.end method
