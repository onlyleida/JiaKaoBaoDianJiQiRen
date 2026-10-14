.class public Lcn/mucang/android/jiakaoyi/signal/k/f0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;

.field protected final b:Lcn/mucang/android/jiakaoyi/signal/k/g0/g;

.field protected final c:Z

.field protected d:I

.field protected final e:Lcn/mucang/android/jiakaoyi/signal/k/g0/e;

.field protected f:[B

.field protected g:I

.field protected h:I

.field protected i:I

.field protected j:I

.field protected k:I

.field protected l:I

.field protected m:Z

.field private n:Z

.field protected o:Ljava/lang/String;

.field private p:Z

.field protected q:I

.field private final r:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;Lcn/mucang/android/jiakaoyi/signal/k/g0/g;Lcn/mucang/android/jiakaoyi/signal/k/g0/e;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xf6

    .line 2
    iput v0, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->d:I

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->g:I

    .line 4
    iput v0, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->h:I

    .line 5
    iput v0, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->i:I

    const/4 v1, 0x1

    .line 6
    iput v1, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->j:I

    .line 7
    iput v1, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->k:I

    .line 8
    iput v0, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->l:I

    .line 9
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->m:Z

    .line 10
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->n:Z

    const-string v1, ""

    .line 11
    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->o:Ljava/lang/String;

    .line 12
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->p:Z

    .line 13
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/k/f0$a;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/signal/k/f0$a;-><init>(Lcn/mucang/android/jiakaoyi/signal/k/f0;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->r:Ljava/lang/Runnable;

    .line 14
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->a:Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;

    .line 15
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->b:Lcn/mucang/android/jiakaoyi/signal/k/g0/g;

    .line 16
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/signal/k/f0;->S()Z

    move-result p1

    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->c:Z

    if-eqz p1, :cond_0

    const/16 p1, 0x200

    .line 17
    iput p1, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->d:I

    .line 18
    :cond_0
    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->e:Lcn/mucang/android/jiakaoyi/signal/k/g0/e;

    return-void
.end method

.method private synthetic A(I[B)[B
    .locals 2

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/communicate/v;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;-><init>(Z)V

    .line 2
    iget v1, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->h:I

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->f(I)V

    .line 3
    iget-boolean v1, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->c:Z

    if-nez v1, :cond_0

    int-to-byte p1, p1

    .line 4
    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->c(B)V

    .line 5
    :cond_0
    invoke-virtual {v0, p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->d([B)V

    .line 6
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->b()[B

    move-result-object p1

    return-object p1
.end method

.method private synthetic C()V
    .locals 9

    .line 1
    new-instance v8, Lcn/mucang/android/jiakaoyi/signal/communicate/q;

    const-class v1, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/y;

    new-instance v5, Lcn/mucang/android/jiakaoyi/signal/k/x;

    invoke-direct {v5, p0}, Lcn/mucang/android/jiakaoyi/signal/k/x;-><init>(Lcn/mucang/android/jiakaoyi/signal/k/f0;)V

    new-instance v6, Lcn/mucang/android/jiakaoyi/signal/k/w;

    invoke-direct {v6, p0}, Lcn/mucang/android/jiakaoyi/signal/k/w;-><init>(Lcn/mucang/android/jiakaoyi/signal/k/f0;)V

    new-instance v7, Lcn/mucang/android/jiakaoyi/signal/k/b0;

    invoke-direct {v7, p0}, Lcn/mucang/android/jiakaoyi/signal/k/b0;-><init>(Lcn/mucang/android/jiakaoyi/signal/k/f0;)V

    const/4 v2, 0x0

    const-wide/16 v3, 0x4e20

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcn/mucang/android/jiakaoyi/signal/communicate/q;-><init>(Ljava/lang/Class;IJLkotlin/jvm/b/a;Lkotlin/jvm/b/a;Lkotlin/jvm/b/l;)V

    .line 2
    invoke-virtual {v8}, Lcn/mucang/android/jiakaoyi/signal/communicate/q;->i()V

    return-void
.end method

.method private synthetic E()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->b:Lcn/mucang/android/jiakaoyi/signal/k/g0/g;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->a:Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;

    iget v2, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->k:I

    invoke-interface {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/signal/k/g0/g;->f(Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;I)V

    :cond_0
    return-void
.end method

.method private H(Lcn/mucang/android/jiakaoyi/signal/communicate/receive/i0;)V
    .locals 5

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->l:I

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->m:Z

    .line 3
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->b:Lcn/mucang/android/jiakaoyi/signal/k/g0/g;

    if-eqz v1, :cond_0

    .line 4
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->a:Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;

    iget v3, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->k:I

    const-string v4, "\u5206\u5305\u53d1\u9001\u5931\u8d25"

    invoke-interface {v1, v2, v4, v3, v0}, Lcn/mucang/android/jiakaoyi/signal/k/g0/g;->i(Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;Ljava/lang/String;IZ)V

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/signal/k/f0;->O()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u6536\u5230\u5206\u5305\u54cd\u5e94\u6d88\u606f-\u8fd4\u56de\u7801\u9519\u8bef"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeUploadModel;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeUploadModel;-><init>()V

    .line 7
    invoke-virtual {v1, v0}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeUploadModel;->setMsg(Ljava/lang/String;)V

    const/4 v0, 0x7

    .line 8
    invoke-virtual {v1, v0}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeUploadModel;->setType(I)V

    .line 9
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->b:Lcn/mucang/android/jiakaoyi/signal/k/g0/g;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->o:Ljava/lang/String;

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->a:Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;

    sget-object v4, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;->SINGLE_MODEL_FAIL:Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;

    invoke-interface {v0, v2, v3, v4, v1}, Lcn/mucang/android/jiakaoyi/signal/k/g0/g;->a(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeUploadModel;)V

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5206\u5305\u53d1\u9001\u5931\u8d25,\u5f00\u59cb\u91cd\u8bd5,\u5931\u8d25\u7684\u7d22\u5f15:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/i0;->a:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DebugOta"

    invoke-static {v0, p1}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "\u5206\u5305\u53d1\u9001\u5931\u8d25,\u5f00\u59cb\u91cd\u8bd5"

    .line 11
    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/signal/k/f0;->b(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/signal/k/f0;->N()V

    return-void
.end method

.method private M()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput v0, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->h:I

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->f:[B

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->g:I

    .line 4
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->m:Z

    .line 5
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->n:Z

    return-void
.end method

.method private P()V
    .locals 7

    const-string v0, "DebugOta"

    .line 1
    iget v1, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->h:I

    add-int/lit8 v2, v1, -0x1

    iget v3, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->d:I

    mul-int v2, v2, v3

    iget v4, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->g:I

    add-int/lit8 v5, v4, -0x1

    if-gt v2, v5, :cond_2

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->f:[B

    if-eqz v2, :cond_2

    .line 2
    iget v5, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->i:I

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    if-gt v1, v5, :cond_0

    move v4, v3

    goto :goto_0

    .line 3
    :cond_0
    rem-int/2addr v4, v3

    .line 4
    :goto_0
    new-array v5, v4, [B

    sub-int/2addr v1, v6

    mul-int v1, v1, v3

    const/4 v3, 0x0

    .line 5
    invoke-static {v2, v1, v5, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5f00\u59cb\u53d1\u5206\u5305"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->h:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", \u7b2c\u51e0\u6b21:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->k:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcn/mucang/android/jiakaoyi/signal/k/f0;->b(Ljava/lang/String;)V

    .line 7
    iget v1, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->q:I

    add-int/2addr v1, v4

    iput v1, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->q:I

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u53d1\u9001\u5206\u5305:\u5e8f\u53f7"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->h:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\u5f53\u524d\u5206\u5305\u5927\u5c0f:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",\u5df2\u53d1\u9001\u5927\u5c0f:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->q:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",\u603b\u6570:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->f:[B

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->h()Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;

    move-result-object v1

    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/com/Cmd;->PackageOrder:Lcn/mucang/android/jiakaoyi/signal/com/Cmd;

    new-instance v3, Lcn/mucang/android/jiakaoyi/signal/k/c0;

    invoke-direct {v3, p0, v4, v5}, Lcn/mucang/android/jiakaoyi/signal/k/c0;-><init>(Lcn/mucang/android/jiakaoyi/signal/k/f0;I[B)V

    invoke-virtual {v1, v2, v3}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->P(Lcn/mucang/android/jiakaoyi/signal/com/Cmd;Lcn/mucang/android/jiakaoyi/signal/com/x/b;)Z

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
    iput-boolean v6, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->m:Z

    .line 14
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->b:Lcn/mucang/android/jiakaoyi/signal/k/g0/g;

    if-eqz v0, :cond_1

    .line 15
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->a:Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;

    iget v4, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->k:I

    invoke-interface {v0, v3, v2, v4, v6}, Lcn/mucang/android/jiakaoyi/signal/k/g0/g;->i(Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;Ljava/lang/String;IZ)V

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/signal/k/f0;->O()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\u53d1\u9001\u5206\u5305\u6307\u4ee4\u5f02\u5e38"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 17
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    .line 18
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeUploadModel;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeUploadModel;-><init>()V

    .line 19
    invoke-virtual {v1, v0}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeUploadModel;->setMsg(Ljava/lang/String;)V

    const/4 v0, 0x5

    .line 20
    invoke-virtual {v1, v0}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeUploadModel;->setType(I)V

    .line 21
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->b:Lcn/mucang/android/jiakaoyi/signal/k/g0/g;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->o:Ljava/lang/String;

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->a:Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;

    sget-object v4, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;->SINGLE_MODEL_FAIL:Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;

    invoke-interface {v0, v2, v3, v4, v1}, Lcn/mucang/android/jiakaoyi/signal/k/g0/g;->a(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeUploadModel;)V

    .line 22
    :cond_1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/signal/k/f0;->N()V

    :cond_2
    :goto_1
    return-void
.end method

.method private Q()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5f00\u59cb\u53d1\u9001ota\u6307\u4ee4\uff0cbuffer\u5927\u5c0f:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->f:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/signal/k/f0;->b(Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/k/t;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/signal/k/t;-><init>(Lcn/mucang/android/jiakaoyi/signal/k/f0;)V

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method private S()Z
    .locals 3

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/dataprovider/b;->a:Lcn/mucang/android/jiakaoyi/framework/dataprovider/b;

    const-class v1, Lcn/mucang/android/jiakaoyi/signal/communicate/AbsSignalProvider;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/framework/dataprovider/b;->a(Ljava/lang/Class;Landroid/os/Bundle;)Lcn/mucang/android/jiakaoyi/framework/dataprovider/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/signal/communicate/AbsSignalProvider;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/communicate/AbsSignalProvider;->useNonOldProtocol()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private a(Lcn/mucang/android/jiakaoyi/signal/communicate/r;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->j()I

    .line 2
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->e()B

    move-result v0

    .line 3
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->e()B

    move-result v1

    .line 4
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->e()B

    .line 5
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->e()B

    .line 6
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->l()I

    .line 7
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->e()B

    .line 8
    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/r;->k(I)I

    .line 9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6587\u4ef6\u5934\u4fe1\u606f\uff1a  \u4ea7\u54c1\u7c7b\u578b\uff1a"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "   \u56fa\u4ef6\u7c7b\u578b\uff1a"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "    \u4f7f\u7528\u65b0\u534f\u8bae\uff1a"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->c:Z

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    .line 10
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->a:Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;->getType()I

    move-result p1

    const/4 v2, 0x1

    if-eq v1, p1, :cond_0

    return v2

    .line 11
    :cond_0
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->k()Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_6

    .line 12
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->n()Z

    move-result p1

    const/4 v3, 0x2

    if-eqz p1, :cond_2

    if-eq v0, v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 13
    :cond_2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->c()Z

    move-result p1

    if-eqz p1, :cond_4

    const/16 p1, 0x8

    if-eq v0, p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    return v2

    :cond_4
    if-eq v0, v3, :cond_5

    goto :goto_2

    :cond_5
    const/4 v2, 0x0

    :goto_2
    return v2

    .line 14
    :cond_6
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->l()Z

    move-result p1

    if-eqz p1, :cond_8

    const/4 p1, 0x6

    if-eq v0, p1, :cond_7

    goto :goto_3

    :cond_7
    const/4 v2, 0x0

    :goto_3
    return v2

    :cond_8
    if-eq v0, v2, :cond_9

    goto :goto_4

    :cond_9
    const/4 v2, 0x0

    :goto_4
    return v2
.end method

.method private synthetic e()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->b:Lcn/mucang/android/jiakaoyi/signal/k/g0/g;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->a:Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;

    iget v2, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->k:I

    invoke-interface {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/signal/k/g0/g;->d(Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;I)V

    :cond_0
    return-void
.end method

.method private synthetic g()[B
    .locals 3

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/communicate/v;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;-><init>(Z)V

    .line 2
    iget v2, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->j:I

    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->c(B)V

    .line 3
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->f:[B

    array-length v2, v2

    invoke-virtual {v0, v2}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->f(I)V

    .line 4
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/com/p;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    iget v2, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->i:I

    sub-int/2addr v2, v1

    invoke-virtual {v0, v2}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->f(I)V

    .line 6
    :cond_0
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->f:[B

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/signal/utils/CRCUtil;->a([B)I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->f(I)V

    .line 7
    iget-boolean v1, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->c:Z

    if-nez v1, :cond_1

    .line 8
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->a:Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;->getVersion()I

    move-result v1

    int-to-short v1, v1

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->h(S)V

    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->f(I)V

    .line 10
    :cond_1
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->b()[B

    move-result-object v0

    return-object v0
.end method

.method private synthetic i()Lkotlin/v;
    .locals 3

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->h()Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;

    move-result-object v0

    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/com/p;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/com/Cmd;->StartOrderV2:Lcn/mucang/android/jiakaoyi/signal/com/Cmd;

    goto :goto_0

    :cond_0
    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/com/Cmd;->StartOrder:Lcn/mucang/android/jiakaoyi/signal/com/Cmd;

    :goto_0
    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/k/v;

    invoke-direct {v2, p0}, Lcn/mucang/android/jiakaoyi/signal/k/v;-><init>(Lcn/mucang/android/jiakaoyi/signal/k/f0;)V

    invoke-virtual {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->P(Lcn/mucang/android/jiakaoyi/signal/com/Cmd;Lcn/mucang/android/jiakaoyi/signal/com/x/b;)Z

    const-string v0, "\u53d1\u9001OTA\u8bf7\u6c42\u5347\u7ea7 0x80\u6307\u4ee4"

    .line 2
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u53d1\u9001OTA\u6307\u4ee4,\u56fa\u4ef6\u7c7b\u578b:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", \u56fa\u4ef6\u7248\u672c:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->a:Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;->getVersion()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/signal/k/f0;->b(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method private synthetic k()Lkotlin/v;
    .locals 6

    const-string v0, "\u53d1\u9001OTA\u5f00\u59cb\u6307\u4ee4\u65e0\u54cd\u5e94"

    .line 1
    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/signal/k/f0;->b(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->m:Z

    .line 3
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->b:Lcn/mucang/android/jiakaoyi/signal/k/g0/g;

    if-eqz v2, :cond_0

    .line 4
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->a:Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;

    iget v4, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->k:I

    const-string v5, "\u53d1\u90010x80\u6307\u4ee4\u8d85\u65f6"

    invoke-interface {v2, v3, v5, v4, v1}, Lcn/mucang/android/jiakaoyi/signal/k/g0/g;->i(Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;Ljava/lang/String;IZ)V

    .line 5
    :cond_0
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->b:Lcn/mucang/android/jiakaoyi/signal/k/g0/g;

    if-eqz v1, :cond_1

    .line 6
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeUploadModel;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeUploadModel;-><init>()V

    .line 7
    invoke-virtual {v1, v0}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeUploadModel;->setMsg(Ljava/lang/String;)V

    const/4 v0, 0x4

    .line 8
    invoke-virtual {v1, v0}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeUploadModel;->setType(I)V

    .line 9
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->b:Lcn/mucang/android/jiakaoyi/signal/k/g0/g;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->o:Ljava/lang/String;

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->a:Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;

    sget-object v4, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;->SINGLE_MODEL_FAIL:Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;

    invoke-interface {v0, v2, v3, v4, v1}, Lcn/mucang/android/jiakaoyi/signal/k/g0/g;->a(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeUploadModel;)V

    .line 10
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->b:Lcn/mucang/android/jiakaoyi/signal/k/g0/g;

    if-eqz v0, :cond_2

    .line 11
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->a:Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;

    const-string v2, "\u91cd\u8bd5\u5931\u8d25\uff0c\u8bf7\u91cd\u65b0\u5c1d\u8bd5\u66f4\u65b0"

    invoke-interface {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/signal/k/g0/g;->c(Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;Ljava/lang/String;)V

    :cond_2
    const-string v0, "\u53d1\u9001\u6307\u4ee4\u5f02\u5e38,\u5f00\u59cb\u91cd\u8bd5"

    .line 12
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method private synthetic m(Lcn/mucang/android/jiakaoyi/signal/communicate/receive/y;)Lkotlin/v;
    .locals 4

    .line 1
    iget-boolean p1, p1, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/m;->a:Z

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->b:Lcn/mucang/android/jiakaoyi/signal/k/g0/g;

    if-eqz p1, :cond_0

    .line 3
    new-instance p1, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeUploadModel;

    invoke-direct {p1}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeUploadModel;-><init>()V

    const-string v0, "OTA\u5f00\u59cb\u6307\u4ee4\u54cd\u5e94\u65e0\u6cd5\u5347\u7ea7\u6216\u6a21\u5757\u4e0d\u5728\u7ebf"

    .line 4
    invoke-virtual {p1, v0}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeUploadModel;->setMsg(Ljava/lang/String;)V

    const/4 v0, 0x4

    .line 5
    invoke-virtual {p1, v0}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeUploadModel;->setType(I)V

    .line 6
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->b:Lcn/mucang/android/jiakaoyi/signal/k/g0/g;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->o:Ljava/lang/String;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->a:Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;

    sget-object v3, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;->SINGLE_MODEL_FAIL:Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;

    invoke-interface {v0, v1, v2, v3, p1}, Lcn/mucang/android/jiakaoyi/signal/k/g0/g;->a(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeUploadModel;)V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private synthetic o(Lcn/mucang/android/jiakaoyi/signal/communicate/receive/j0;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/j0;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget v0, p1, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/j0;->a:I

    .line 3
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->b:Lcn/mucang/android/jiakaoyi/signal/k/g0/g;

    if-eqz v1, :cond_2

    .line 4
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->a:Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;

    invoke-interface {v1, v2, p1}, Lcn/mucang/android/jiakaoyi/signal/k/g0/g;->b(Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;Lcn/mucang/android/jiakaoyi/signal/communicate/receive/j0;)V

    .line 5
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->b:Lcn/mucang/android/jiakaoyi/signal/k/g0/g;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->a:Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;

    div-int/lit8 v2, v0, 0x2

    add-int/lit8 v2, v2, 0x32

    iget v3, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->k:I

    const/16 v4, 0x64

    invoke-interface {p1, v1, v2, v4, v3}, Lcn/mucang/android/jiakaoyi/signal/k/g0/g;->h(Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;III)V

    if-lt v0, v4, :cond_2

    .line 6
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->b:Lcn/mucang/android/jiakaoyi/signal/k/g0/g;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->a:Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;

    iget v1, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->k:I

    invoke-interface {p1, v0, v1}, Lcn/mucang/android/jiakaoyi/signal/k/g0/g;->d(Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;I)V

    goto/16 :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->b:Lcn/mucang/android/jiakaoyi/signal/k/g0/g;

    const-string v1, ",\u8fdb\u5ea6: "

    const-string v2, "\u5b50\u6a21\u5757\u66f4\u65b0\u5f02\u5e38: "

    if-eqz v0, :cond_1

    .line 8
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->a:Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;

    const-string v4, "\u5b50\u6a21\u5757\u56fa\u4ef6\u66f4\u65b0\u5f02\u5e38"

    invoke-interface {v0, v3, v4}, Lcn/mucang/android/jiakaoyi/signal/k/g0/g;->c(Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;Ljava/lang/String;)V

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/j0;->b:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/j0;->a:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 10
    new-instance v3, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeUploadModel;

    invoke-direct {v3}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeUploadModel;-><init>()V

    .line 11
    invoke-virtual {v3, v0}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeUploadModel;->setMsg(Ljava/lang/String;)V

    const/16 v0, 0x8

    .line 12
    invoke-virtual {v3, v0}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeUploadModel;->setType(I)V

    .line 13
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->b:Lcn/mucang/android/jiakaoyi/signal/k/g0/g;

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->o:Ljava/lang/String;

    iget-object v5, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->a:Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;

    sget-object v6, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;->SINGLE_MODEL_FAIL:Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;

    invoke-interface {v0, v4, v5, v6, v3}, Lcn/mucang/android/jiakaoyi/signal/k/g0/g;->a(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeUploadModel;)V

    .line 14
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/j0;->b:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/j0;->a:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DebugOta"

    invoke-static {v0, p1}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u66f4\u65b0"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->a:Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;->getTypeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u56fa\u4ef6\u5f02\u5e38\uff0c\u5347\u7ea7\u4e0b\u4e00\u4e2a\u56fa\u4ef6"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    const-string p1, "\u66f4\u65b0\u5b50\u6a21\u5757\u56fa\u4ef6\u5f02\u5e38\uff0c\u5347\u7ea7\u4e0b\u4e00\u4e2a\u56fa\u4ef6"

    .line 16
    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/signal/k/f0;->b(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private synthetic q()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->b:Lcn/mucang/android/jiakaoyi/signal/k/g0/g;

    if-eqz v0, :cond_1

    .line 2
    iget v0, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->h:I

    .line 3
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->a:Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;->isMainObd()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    iget v0, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->h:I

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

.method private synthetic s()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->b:Lcn/mucang/android/jiakaoyi/signal/k/g0/g;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->a:Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;

    iget v2, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->k:I

    invoke-interface {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/signal/k/g0/g;->d(Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;I)V

    :cond_0
    return-void
.end method

.method private synthetic u()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->b:Lcn/mucang/android/jiakaoyi/signal/k/g0/g;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->a:Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;

    iget v2, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->h:I

    iget v3, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->i:I

    iget v4, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->k:I

    invoke-interface {v0, v1, v2, v3, v4}, Lcn/mucang/android/jiakaoyi/signal/k/g0/g;->h(Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;III)V

    :cond_0
    return-void
.end method

.method private synthetic w()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->b:Lcn/mucang/android/jiakaoyi/signal/k/g0/g;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->a:Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;

    iget v2, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->k:I

    invoke-interface {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/signal/k/g0/g;->g(Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;I)V

    :cond_0
    return-void
.end method

.method private synthetic y()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->b:Lcn/mucang/android/jiakaoyi/signal/k/g0/g;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->a:Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;

    const-string v2, "\u91cd\u8bd5\u5931\u8d25\uff0c\u8bf7\u91cd\u65b0\u5c1d\u8bd5\u66f4\u65b0"

    invoke-interface {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/signal/k/g0/g;->c(Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public synthetic B(I[B)[B
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/signal/k/f0;->A(I[B)[B

    move-result-object p1

    return-object p1
.end method

.method public synthetic D()V
    .locals 0

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/signal/k/f0;->C()V

    return-void
.end method

.method public synthetic F()V
    .locals 0

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/signal/k/f0;->E()V

    return-void
.end method

.method public G(Lcn/mucang/android/jiakaoyi/signal/communicate/receive/j0;)V
    .locals 1

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/k/a0;

    invoke-direct {v0, p0, p1}, Lcn/mucang/android/jiakaoyi/signal/k/a0;-><init>(Lcn/mucang/android/jiakaoyi/signal/k/f0;Lcn/mucang/android/jiakaoyi/signal/communicate/receive/j0;)V

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public I(ZLandroid/os/Handler;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->a:Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;->getTypeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u6536\u5230\u5206\u5305\u5b8c\u6210\u5e94\u7b54\uff0c\u5206\u5305\u603b\u5e8f\u53f7"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    const/4 v0, 0x1

    if-eqz p1, :cond_6

    .line 2
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->b:Lcn/mucang/android/jiakaoyi/signal/k/g0/g;

    if-eqz p1, :cond_0

    .line 3
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->a:Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;

    iget v2, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->k:I

    invoke-interface {p1, v1, v2}, Lcn/mucang/android/jiakaoyi/signal/k/g0/g;->e(Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;I)V

    .line 4
    :cond_0
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->a:Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;->getType()I

    move-result p1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 5
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/signal/k/f0;->d()V

    return-void

    .line 6
    :cond_1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->c()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->b()Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->a:Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;->getType()I

    move-result p1

    const/4 v1, 0x7

    if-ne p1, v1, :cond_3

    .line 7
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/signal/k/f0;->d()V

    return-void

    .line 8
    :cond_3
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->e:Lcn/mucang/android/jiakaoyi/signal/k/g0/e;

    if-eqz p1, :cond_4

    .line 9
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->a:Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->b:Lcn/mucang/android/jiakaoyi/signal/k/g0/g;

    invoke-interface {p1, p2, v0}, Lcn/mucang/android/jiakaoyi/signal/k/g0/e;->a(Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;Lcn/mucang/android/jiakaoyi/signal/k/g0/g;)V

    return-void

    .line 10
    :cond_4
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->a:Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;->getType()I

    move-result p1

    if-ne p1, v0, :cond_5

    .line 11
    invoke-virtual {p0, p2}, Lcn/mucang/android/jiakaoyi/signal/k/f0;->c(Landroid/os/Handler;)V

    goto :goto_0

    .line 12
    :cond_5
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/signal/k/f0;->d()V

    goto :goto_0

    .line 13
    :cond_6
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->m:Z

    .line 14
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->b:Lcn/mucang/android/jiakaoyi/signal/k/g0/g;

    if-eqz p1, :cond_7

    .line 15
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->a:Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;

    iget v1, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->k:I

    const-string v2, "\u66f4\u65b0\u5b8c\u6210\u5f02\u5e38"

    invoke-interface {p1, p2, v2, v1, v0}, Lcn/mucang/android/jiakaoyi/signal/k/g0/g;->i(Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;Ljava/lang/String;IZ)V

    .line 16
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/signal/k/f0;->O()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\u6536\u5230\u5206\u5305\u5b8c\u6210\u6d88\u606f-\u8fd4\u56de\u7801\u9519\u8bef"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 17
    new-instance p2, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeUploadModel;

    invoke-direct {p2}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeUploadModel;-><init>()V

    .line 18
    invoke-virtual {p2, p1}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeUploadModel;->setMsg(Ljava/lang/String;)V

    const/16 p1, 0x8

    .line 19
    invoke-virtual {p2, p1}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeUploadModel;->setType(I)V

    .line 20
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->b:Lcn/mucang/android/jiakaoyi/signal/k/g0/g;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->o:Ljava/lang/String;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->a:Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;

    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;->SINGLE_MODEL_FAIL:Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;

    invoke-interface {p1, v0, v1, v2, p2}, Lcn/mucang/android/jiakaoyi/signal/k/g0/g;->a(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeUploadModel;)V

    :cond_7
    const-string p1, "\u66f4\u65b0\u5b8c\u6210\u5f02\u5e38,\u5f00\u59cb\u91cd\u8bd5"

    .line 21
    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/signal/k/f0;->b(Ljava/lang/String;)V

    .line 22
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->a:Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;->getTypeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    .line 23
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/signal/k/f0;->N()V

    :goto_0
    return-void
.end method

.method public J(Lcn/mucang/android/jiakaoyi/signal/communicate/receive/i0;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u6536\u5230\u5206\u5305\u5e94\u7b54\uff1a\u5305\u5e8f\u53f7:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/i0;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",\u72b6\u6001:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p1, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/i0;->b:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DebugOta"

    invoke-static {v1, v0}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/i0;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->l:I

    .line 4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u6536\u5230\u5206\u5305:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->h:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/signal/k/f0;->b(Ljava/lang/String;)V

    .line 5
    iget p1, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->h:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->h:I

    .line 6
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/signal/k/f0;->P()V

    .line 7
    new-instance p1, Lcn/mucang/android/jiakaoyi/signal/k/z;

    invoke-direct {p1, p0}, Lcn/mucang/android/jiakaoyi/signal/k/z;-><init>(Lcn/mucang/android/jiakaoyi/signal/k/f0;)V

    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 8
    :cond_0
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/i0;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->c:Z

    if-eqz v0, :cond_2

    .line 9
    iget v0, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->l:I

    const/4 v2, 0x5

    if-ge v0, v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    .line 10
    iput v0, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->l:I

    .line 11
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u91cd\u65b0\u53d1\u5206\u5305:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->h:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/signal/k/f0;->b(Ljava/lang/String;)V

    .line 12
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u91cd\u65b0\u53d1\u5305:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->h:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/signal/k/f0;->P()V

    goto :goto_0

    .line 14
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u91cd\u65b0\u53d1\u5206\u5305\u8d85\u8fc7\u9650\u5b9a\u6b21\u6570:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/signal/k/f0;->b(Ljava/lang/String;)V

    .line 15
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/signal/k/f0;->H(Lcn/mucang/android/jiakaoyi/signal/communicate/receive/i0;)V

    :goto_0
    return-void

    .line 16
    :cond_2
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/signal/k/f0;->H(Lcn/mucang/android/jiakaoyi/signal/communicate/receive/i0;)V

    :goto_1
    return-void
.end method

.method public K(Landroid/os/Handler;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->a:Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;->isMainObd()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->m:Z

    if-eqz p1, :cond_1

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->r:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    const-string p1, "DebugOta"

    const-string v0, "\u4e3b\u63a7\u56fa\u4ef6\u66f4\u65b0,\u6536\u5230\u8bbe\u5907\u91cd\u542f\u4fe1\u53f7"

    .line 4
    invoke-static {p1, v0}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "\u6536\u5230\u8bbe\u5907\u91cd\u542f\u4fe1\u53f7,\u4e3b\u63a7\u56fa\u4ef6"

    .line 5
    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/signal/k/f0;->b(Ljava/lang/String;)V

    .line 6
    new-instance p1, Lcn/mucang/android/jiakaoyi/signal/k/s;

    invoke-direct {p1, p0}, Lcn/mucang/android/jiakaoyi/signal/k/s;-><init>(Lcn/mucang/android/jiakaoyi/signal/k/f0;)V

    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    .line 7
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->b:Lcn/mucang/android/jiakaoyi/signal/k/g0/g;

    if-eqz p1, :cond_2

    .line 8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/signal/k/f0;->O()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u4e3b\u63a7\u66f4\u65b0\u6210\u529f"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 9
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeUploadModel;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeUploadModel;-><init>()V

    .line 10
    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeUploadModel;->setMsg(Ljava/lang/String;)V

    const/16 p1, 0x9

    .line 11
    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeUploadModel;->setType(I)V

    .line 12
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->b:Lcn/mucang/android/jiakaoyi/signal/k/g0/g;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->o:Ljava/lang/String;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->a:Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;

    sget-object v3, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;->SINGLE_MODEL_SUCCESS:Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;

    invoke-interface {p1, v1, v2, v3, v0}, Lcn/mucang/android/jiakaoyi/signal/k/g0/g;->a(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeUploadModel;)V

    :cond_2
    return-void
.end method

.method public L()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->n:Z

    if-eqz v0, :cond_0

    const-string v0, "\u6d88\u606f0x81\u91cd\u590d\u63a5\u6536\uff0c\u5df2\u4e22\u5f03"

    .line 2
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->n:Z

    .line 4
    iput v0, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->h:I

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->q:I

    .line 6
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/signal/k/f0;->P()V

    .line 7
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/k/y;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/signal/k/y;-><init>(Lcn/mucang/android/jiakaoyi/signal/k/f0;)V

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/signal/k/f0;->O()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u6536\u5230"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->a:Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;->getTypeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u54cd\u5e94\u6307\u4ee4"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 9
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    .line 10
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->b:Lcn/mucang/android/jiakaoyi/signal/k/g0/g;

    if-eqz v1, :cond_1

    .line 11
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeUploadModel;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeUploadModel;-><init>()V

    .line 12
    invoke-virtual {v1, v0}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeUploadModel;->setMsg(Ljava/lang/String;)V

    const/4 v0, 0x6

    .line 13
    invoke-virtual {v1, v0}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeUploadModel;->setType(I)V

    .line 14
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->b:Lcn/mucang/android/jiakaoyi/signal/k/g0/g;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->o:Ljava/lang/String;

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->a:Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;

    sget-object v4, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;->SINGLE_MODEL_UPGRADING:Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;

    invoke-interface {v0, v2, v3, v4, v1}, Lcn/mucang/android/jiakaoyi/signal/k/g0/g;->a(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeUploadModel;)V

    :cond_1
    return-void
.end method

.method protected N()V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->m:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->k:I

    const/4 v1, 0x1

    const/4 v2, 0x3

    const-string v3, "\u5f00\u59cb\u91cd\u8bd5,\u6b21\u6570"

    if-ge v0, v2, :cond_1

    .line 3
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->p:Z

    add-int/2addr v0, v1

    .line 4
    iput v0, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->k:I

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/signal/k/f0;->b(Ljava/lang/String;)V

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    .line 7
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/signal/k/f0;->R()V

    .line 8
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/k/q;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/signal/k/q;-><init>(Lcn/mucang/android/jiakaoyi/signal/k/f0;)V

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 9
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->k:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "\u8d85\u8fc7"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "\u6b21\uff0c\u66f4\u65b0\u5931\u8d25"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/signal/k/f0;->b(Ljava/lang/String;)V

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->k:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->p:Z

    .line 12
    iput v1, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->k:I

    const-string v0, ""

    .line 13
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->o:Ljava/lang/String;

    .line 14
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/k/u;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/signal/k/u;-><init>(Lcn/mucang/android/jiakaoyi/signal/k/f0;)V

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method protected O()Ljava/lang/String;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->p:Z

    if-eqz v0, :cond_0

    const-string v0, "\u91cd\u8bd5-"

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public R()V
    .locals 12

    const-string v0, "\u6587\u4ef6\u5934\u6821\u9a8c\u4e0d\u901a\u8fc7"

    const-string v1, "\u56fa\u4ef6\u6587\u4ef6\u8bfb\u53d6\u5f02\u5e38"

    .line 1
    iget-boolean v2, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->p:Z

    const/4 v3, 0x1

    if-nez v2, :cond_0

    .line 2
    iput v3, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->k:I

    .line 3
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "-"

    const-string v5, ""

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->o:Ljava/lang/String;

    .line 4
    :cond_0
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/signal/k/f0;->M()V

    const/4 v2, 0x0

    const/4 v4, 0x3

    .line 5
    :try_start_0
    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->a:Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;

    invoke-virtual {v6}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;->getDownloadFilePath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 7
    new-instance v7, Ljava/io/DataInputStream;

    invoke-direct {v7, v6}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 8
    :try_start_1
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v5

    long-to-int v2, v5

    new-array v5, v2, [B

    .line 9
    invoke-virtual {v7, v5}, Ljava/io/DataInputStream;->readFully([B)V

    const/4 v6, 0x4

    new-array v8, v6, [B

    const/4 v9, 0x0

    .line 10
    invoke-static {v5, v9, v8, v9, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array v6, v6, [B

    const/16 v10, -0x56

    aput-byte v10, v6, v9

    aput-byte v10, v6, v3

    const/4 v11, 0x2

    aput-byte v10, v6, v11

    aput-byte v10, v6, v4

    .line 11
    invoke-static {v8, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "\u7279\u6b8a\u5904\u7406\u524d128\u5b57\u8282"

    .line 12
    invoke-static {v6}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    const/16 v6, 0x80

    sub-int/2addr v2, v6

    .line 13
    new-array v8, v2, [B

    iput-object v8, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->f:[B

    .line 14
    invoke-static {v5, v6, v8, v9, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array v2, v6, [B

    .line 15
    invoke-static {v5, v9, v2, v9, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 16
    new-instance v5, Lcn/mucang/android/jiakaoyi/signal/communicate/r;

    invoke-direct {v5, v2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;-><init>([B)V

    invoke-direct {p0, v5}, Lcn/mucang/android/jiakaoyi/signal/k/f0;->a(Lcn/mucang/android/jiakaoyi/signal/communicate/r;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 17
    :cond_1
    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 18
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    .line 19
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0

    .line 20
    :cond_2
    iput-object v5, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->f:[B

    .line 21
    :goto_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->f:[B

    array-length v0, v0

    iput v0, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->g:I

    .line 22
    iget v2, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->d:I

    div-int v5, v0, v2

    iput v5, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->i:I

    .line 23
    rem-int/2addr v0, v2

    if-lez v0, :cond_3

    add-int/2addr v5, v3

    .line 24
    iput v5, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->i:I

    .line 25
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u521d\u59cb\u5316=========\u5206\u5305\u4e2a\u6570:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->i:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",\u603b\u5927\u5c0f:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->g:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    .line 26
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->a:Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;->getType()I

    move-result v0

    iput v0, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->j:I

    .line 27
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/k/r;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/signal/k/r;-><init>(Lcn/mucang/android/jiakaoyi/signal/k/f0;)V

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5f00\u59cb\u5347\u7ea7"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->a:Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;

    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;->getTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 29
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    .line 30
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->b:Lcn/mucang/android/jiakaoyi/signal/k/g0/g;

    if-eqz v2, :cond_4

    .line 31
    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeUploadModel;

    invoke-direct {v2}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeUploadModel;-><init>()V

    .line 32
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/signal/k/f0;->O()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeUploadModel;->setMsg(Ljava/lang/String;)V

    .line 33
    invoke-virtual {v2, v4}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeUploadModel;->setType(I)V

    .line 34
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->b:Lcn/mucang/android/jiakaoyi/signal/k/g0/g;

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->o:Ljava/lang/String;

    iget-object v5, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->a:Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;

    sget-object v6, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;->SINGLE_MODEL_START:Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;

    invoke-interface {v0, v3, v5, v6, v2}, Lcn/mucang/android/jiakaoyi/signal/k/g0/g;->a(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeUploadModel;)V

    .line 35
    :cond_4
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/signal/k/f0;->Q()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    invoke-static {v7}, Lcn/mucang/android/core/utils/o;->a(Ljava/io/Closeable;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v2, v7

    goto :goto_3

    :catch_0
    move-object v2, v7

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_3

    .line 37
    :catch_1
    :goto_1
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->a:Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;

    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;->getTypeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    .line 38
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->b:Lcn/mucang/android/jiakaoyi/signal/k/g0/g;

    if-eqz v0, :cond_5

    .line 39
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->a:Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;

    invoke-interface {v0, v3, v1}, Lcn/mucang/android/jiakaoyi/signal/k/g0/g;->c(Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;Ljava/lang/String;)V

    .line 40
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeUploadModel;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeUploadModel;-><init>()V

    .line 41
    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeUploadModel;->setMsg(Ljava/lang/String;)V

    .line 42
    invoke-virtual {v0, v4}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeUploadModel;->setType(I)V

    .line 43
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->b:Lcn/mucang/android/jiakaoyi/signal/k/g0/g;

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->o:Ljava/lang/String;

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->a:Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;

    sget-object v5, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;->SINGLE_MODEL_FAIL:Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;

    invoke-interface {v1, v3, v4, v5, v0}, Lcn/mucang/android/jiakaoyi/signal/k/g0/g;->a(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeUploadModel;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 44
    :cond_5
    invoke-static {v2}, Lcn/mucang/android/core/utils/o;->a(Ljava/io/Closeable;)V

    :goto_2
    return-void

    :goto_3
    invoke-static {v2}, Lcn/mucang/android/core/utils/o;->a(Ljava/io/Closeable;)V

    throw v0
.end method

.method protected b(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    const-class v0, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/TestOTAUpgradeState;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v0

    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/TestOTAUpgradeState;

    invoke-direct {v1, p1}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/TestOTAUpgradeState;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected c(Landroid/os/Handler;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u66f4\u65b0\u5b8c\u6210,\u7b49\u5f85\u8bbe\u5907\u91cd\u542f"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->h:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "DebugOta"

    invoke-static {v2, v0}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p0, v1}, Lcn/mucang/android/jiakaoyi/signal/k/f0;->b(Ljava/lang/String;)V

    const-string v0, "\u4e3b\u63a7\u66f4\u65b0\u5b8c\u6210,\u7b49\u5f85\u8bbe\u5907\u91cd\u542f"

    .line 3
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->r:Ljava/lang/Runnable;

    const-wide/16 v1, 0x4e20

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method protected d()V
    .locals 5

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->m:Z

    const-string v0, "DebugOta"

    const-string v1, "OBD-onSuccessOnTime-\u53d1\u9001SINGLE_MODEL_SUCCESS\u6d88\u606f"

    .line 2
    invoke-static {v0, v1}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "OBD\u56fa\u4ef6\u66f4\u65b0\u5b8c\u6210"

    .line 3
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    .line 4
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/k/d0;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/signal/k/d0;-><init>(Lcn/mucang/android/jiakaoyi/signal/k/f0;)V

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    .line 5
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->b:Lcn/mucang/android/jiakaoyi/signal/k/g0/g;

    if-eqz v0, :cond_0

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/signal/k/f0;->O()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "obd\u66f4\u65b0\u6210\u529f"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeUploadModel;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeUploadModel;-><init>()V

    .line 8
    invoke-virtual {v1, v0}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeUploadModel;->setMsg(Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 9
    invoke-virtual {v1, v0}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeUploadModel;->setType(I)V

    .line 10
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->b:Lcn/mucang/android/jiakaoyi/signal/k/g0/g;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->o:Ljava/lang/String;

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->a:Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;

    sget-object v4, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;->SINGLE_MODEL_SUCCESS:Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;

    invoke-interface {v0, v2, v3, v4, v1}, Lcn/mucang/android/jiakaoyi/signal/k/g0/g;->a(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeUploadModel;)V

    :cond_0
    return-void
.end method

.method public synthetic f()V
    .locals 0

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/signal/k/f0;->e()V

    return-void
.end method

.method public synthetic h()[B
    .locals 1

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/signal/k/f0;->g()[B

    move-result-object v0

    return-object v0
.end method

.method public synthetic j()Lkotlin/v;
    .locals 1

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/signal/k/f0;->i()Lkotlin/v;

    move-result-object v0

    return-object v0
.end method

.method public synthetic l()Lkotlin/v;
    .locals 1

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/signal/k/f0;->k()Lkotlin/v;

    move-result-object v0

    return-object v0
.end method

.method public synthetic n(Lcn/mucang/android/jiakaoyi/signal/communicate/receive/y;)Lkotlin/v;
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/signal/k/f0;->m(Lcn/mucang/android/jiakaoyi/signal/communicate/receive/y;)Lkotlin/v;

    move-result-object p1

    return-object p1
.end method

.method public synthetic p(Lcn/mucang/android/jiakaoyi/signal/communicate/receive/j0;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/signal/k/f0;->o(Lcn/mucang/android/jiakaoyi/signal/communicate/receive/j0;)V

    return-void
.end method

.method public synthetic r()V
    .locals 0

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/signal/k/f0;->q()V

    return-void
.end method

.method public synthetic t()V
    .locals 0

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/signal/k/f0;->s()V

    return-void
.end method

.method public synthetic v()V
    .locals 0

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/signal/k/f0;->u()V

    return-void
.end method

.method public synthetic x()V
    .locals 0

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/signal/k/f0;->w()V

    return-void
.end method

.method public synthetic z()V
    .locals 0

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/signal/k/f0;->y()V

    return-void
.end method
