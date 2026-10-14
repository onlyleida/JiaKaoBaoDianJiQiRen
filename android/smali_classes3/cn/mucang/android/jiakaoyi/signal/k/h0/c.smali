.class public Lcn/mucang/android/jiakaoyi/signal/k/h0/c;
.super Lcn/mucang/android/jiakaoyi/signal/k/f0;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;Lcn/mucang/android/jiakaoyi/signal/k/g0/g;Lcn/mucang/android/jiakaoyi/signal/k/g0/e;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/signal/k/f0;-><init>(Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;Lcn/mucang/android/jiakaoyi/signal/k/g0/g;Lcn/mucang/android/jiakaoyi/signal/k/g0/e;)V

    return-void
.end method

.method private P()V
    .locals 7

    const-string v0, "DebugOta"

    .line 1
    iget v1, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->h:I

    if-ltz v1, :cond_2

    iget v2, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->i:I

    if-ge v1, v2, :cond_2

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->f:[B

    if-eqz v3, :cond_2

    .line 2
    iget v4, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->d:I

    const/4 v5, 0x1

    sub-int/2addr v2, v5

    if-ne v1, v2, :cond_0

    .line 3
    iget v2, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->g:I

    rem-int/2addr v2, v4

    goto :goto_0

    :cond_0
    move v2, v4

    .line 4
    :goto_0
    new-array v6, v2, [B

    mul-int v1, v1, v4

    const/4 v4, 0x0

    .line 5
    invoke-static {v3, v1, v6, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5f00\u59cb\u53d1\u5206\u5305"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->h:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", \u7b2c\u51e0\u6b21:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->k:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcn/mucang/android/jiakaoyi/signal/k/f0;->b(Ljava/lang/String;)V

    .line 7
    iget v1, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->q:I

    add-int/2addr v1, v2

    iput v1, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->q:I

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u53d1\u9001\u5206\u5305:\u5e8f\u53f7"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->h:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\u5f53\u524d\u5206\u5305\u5927\u5c0f:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",\u5df2\u53d1\u9001\u5927\u5c0f:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->q:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",\u603b\u6570:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->f:[B

    array-length v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->h()Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;

    move-result-object v1

    sget-object v3, Lcn/mucang/android/jiakaoyi/signal/com/Cmd;->PackageOrderV2:Lcn/mucang/android/jiakaoyi/signal/com/Cmd;

    new-instance v4, Lcn/mucang/android/jiakaoyi/signal/k/h0/b;

    invoke-direct {v4, p0, v2, v6}, Lcn/mucang/android/jiakaoyi/signal/k/h0/b;-><init>(Lcn/mucang/android/jiakaoyi/signal/k/h0/c;I[B)V

    invoke-virtual {v1, v3, v4}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->P(Lcn/mucang/android/jiakaoyi/signal/com/Cmd;Lcn/mucang/android/jiakaoyi/signal/com/x/b;)Z

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5f00\u59cb\u53d1\u9001\u5206\u5305:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->h:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 11
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u53d1\u9001\u5206\u5305\u5f02\u5e38:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u53d1\u9001\u5206\u5305\u5f02\u5e38"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/signal/k/f0;->b(Ljava/lang/String;)V

    .line 13
    iput-boolean v5, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->m:Z

    .line 14
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->b:Lcn/mucang/android/jiakaoyi/signal/k/g0/g;

    if-eqz v0, :cond_1

    .line 15
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->a:Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;

    iget v4, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->k:I

    invoke-interface {v0, v3, v2, v4, v5}, Lcn/mucang/android/jiakaoyi/signal/k/g0/g;->i(Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;Ljava/lang/String;IZ)V

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "${retryTip()}\u53d1\u9001\u5206\u5305\u6307\u4ee4\u5f02\u5e38"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 17
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeUploadModel;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeUploadModel;-><init>()V

    .line 18
    invoke-virtual {v1, v0}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeUploadModel;->setMsg(Ljava/lang/String;)V

    const/4 v0, 0x5

    .line 19
    invoke-virtual {v1, v0}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeUploadModel;->setType(I)V

    .line 20
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->b:Lcn/mucang/android/jiakaoyi/signal/k/g0/g;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->o:Ljava/lang/String;

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->a:Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;

    sget-object v4, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;->SINGLE_MODEL_FAIL:Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;

    invoke-interface {v0, v2, v3, v4, v1}, Lcn/mucang/android/jiakaoyi/signal/k/g0/g;->a(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeUploadModel;)V

    .line 21
    :cond_1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/signal/k/f0;->N()V

    :cond_2
    :goto_1
    return-void
.end method

.method private synthetic T()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->b:Lcn/mucang/android/jiakaoyi/signal/k/g0/g;

    if-eqz v0, :cond_1

    .line 2
    iget v0, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->h:I

    add-int/lit8 v0, v0, 0x1

    .line 3
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->a:Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;->isMainObd()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    iget v0, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->h:I

    add-int/lit8 v0, v0, 0x1

    div-int/lit8 v0, v0, 0x2

    .line 5
    :cond_0
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->b:Lcn/mucang/android/jiakaoyi/signal/k/g0/g;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->a:Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;

    iget v3, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->i:I

    iget v4, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->k:I

    invoke-interface {v1, v2, v0, v3, v4}, Lcn/mucang/android/jiakaoyi/signal/k/g0/g;->h(Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;III)V

    :cond_1
    return-void
.end method

.method private synthetic V(I[B)[B
    .locals 2

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/communicate/v;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;-><init>(Z)V

    .line 2
    iget v1, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->j:I

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->c(B)V

    .line 3
    iget v1, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->h:I

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->f(I)V

    .line 4
    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->f(I)V

    .line 5
    invoke-virtual {v0, p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->d([B)V

    .line 6
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->b()[B

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public synthetic U()V
    .locals 0

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/signal/k/h0/c;->T()V

    return-void
.end method

.method public synthetic W(I[B)[B
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/signal/k/h0/c;->V(I[B)[B

    move-result-object p1

    return-object p1
.end method

.method public X(Lcn/mucang/android/jiakaoyi/signal/communicate/receive/n0/b;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u6536\u5230\u5206\u5305\u8bf7\u6c42\uff1a\u5305\u5e8f\u53f7:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/n0/b;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", \u5347\u7ea7\u533a\u57df:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/n0/b;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DebugOta"

    invoke-static {v1, v0}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->l:I

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u6536\u5230\u5206\u5305:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/n0/b;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/signal/k/f0;->b(Ljava/lang/String;)V

    .line 4
    iget p1, p1, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/n0/b;->b:I

    iput p1, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->h:I

    .line 5
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/signal/k/h0/c;->P()V

    .line 6
    new-instance p1, Lcn/mucang/android/jiakaoyi/signal/k/h0/a;

    invoke-direct {p1, p0}, Lcn/mucang/android/jiakaoyi/signal/k/h0/a;-><init>(Lcn/mucang/android/jiakaoyi/signal/k/h0/c;)V

    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    return-void
.end method
