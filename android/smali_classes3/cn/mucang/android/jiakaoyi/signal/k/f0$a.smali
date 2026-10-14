.class Lcn/mucang/android/jiakaoyi/signal/k/f0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/signal/k/f0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/jiakaoyi/signal/k/f0;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/signal/k/f0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0$a;->a:Lcn/mucang/android/jiakaoyi/signal/k/f0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0$a;->a:Lcn/mucang/android/jiakaoyi/signal/k/f0;

    iget-boolean v1, v0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->m:Z

    if-nez v1, :cond_2

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, v0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->m:Z

    .line 3
    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->b:Lcn/mucang/android/jiakaoyi/signal/k/g0/g;

    if-eqz v2, :cond_0

    .line 4
    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->a:Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->k:I

    const-string v4, "\u8bbe\u5907\u91cd\u542f\u8d85\u65f6"

    invoke-interface {v2, v3, v4, v0, v1}, Lcn/mucang/android/jiakaoyi/signal/k/g0/g;->i(Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;Ljava/lang/String;IZ)V

    :cond_0
    const-string v0, "DebugOta"

    const-string v2, "\u8bbe\u5907\u91cd\u542f\u8d85\u65f6,\u5f00\u59cb\u91cd\u8bd5"

    .line 5
    invoke-static {v0, v2}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0$a;->a:Lcn/mucang/android/jiakaoyi/signal/k/f0;

    invoke-virtual {v0, v2}, Lcn/mucang/android/jiakaoyi/signal/k/f0;->b(Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0$a;->a:Lcn/mucang/android/jiakaoyi/signal/k/f0;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->b:Lcn/mucang/android/jiakaoyi/signal/k/g0/g;

    if-eqz v0, :cond_1

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0$a;->a:Lcn/mucang/android/jiakaoyi/signal/k/f0;

    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/signal/k/f0;->O()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\u4e3b\u63a7\u5347\u7ea7\u5931\u8d25-\u8bbe\u5907\u542f\u52a8\u8d85\u65f6"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 9
    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeUploadModel;

    invoke-direct {v2}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeUploadModel;-><init>()V

    .line 10
    invoke-virtual {v2, v0}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeUploadModel;->setMsg(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v2, v1}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeUploadModel;->setType(I)V

    .line 12
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0$a;->a:Lcn/mucang/android/jiakaoyi/signal/k/f0;

    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->b:Lcn/mucang/android/jiakaoyi/signal/k/g0/g;

    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->o:Ljava/lang/String;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/k/f0;->a:Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;

    sget-object v4, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;->SINGLE_MODEL_FAIL:Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;

    invoke-interface {v1, v3, v0, v4, v2}, Lcn/mucang/android/jiakaoyi/signal/k/g0/g;->a(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeInfoModel;Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeState;Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeUploadModel;)V

    .line 13
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/k/f0$a;->a:Lcn/mucang/android/jiakaoyi/signal/k/f0;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/k/f0;->N()V

    :cond_2
    return-void
.end method
