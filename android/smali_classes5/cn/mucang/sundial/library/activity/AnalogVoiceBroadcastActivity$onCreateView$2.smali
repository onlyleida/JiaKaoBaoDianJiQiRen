.class final Lcn/mucang/sundial/library/activity/AnalogVoiceBroadcastActivity$onCreateView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/sundial/library/activity/AnalogVoiceBroadcastActivity;->onCreateView(Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0003\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0001\u0010\u0002"
    }
    d2 = {
        "Lkotlin/v;",
        "run",
        "()V",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcn/mucang/sundial/library/activity/AnalogVoiceBroadcastActivity;


# direct methods
.method constructor <init>(Lcn/mucang/sundial/library/activity/AnalogVoiceBroadcastActivity;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/sundial/library/activity/AnalogVoiceBroadcastActivity$onCreateView$2;->this$0:Lcn/mucang/sundial/library/activity/AnalogVoiceBroadcastActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/blankj/utilcode/util/f;->b()Lcom/blankj/utilcode/util/f;

    move-result-object v0

    const-string v1, "exam_voice_v3"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/blankj/utilcode/util/f;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/mucang/sundial/library/activity/AnalogVoiceBroadcastActivity$onCreateView$2;->this$0:Lcn/mucang/sundial/library/activity/AnalogVoiceBroadcastActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "JiaKaoBaoDian"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "exam"

    invoke-static {v0, v3, v2}, Lcn/mucang/sundial/library/util/AssetUtils;->copyAssetsToSD(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 3
    invoke-static {}, Lcom/blankj/utilcode/util/f;->b()Lcom/blankj/utilcode/util/f;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/blankj/utilcode/util/f;->i(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method
