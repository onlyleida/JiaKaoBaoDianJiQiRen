.class Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2$b;
.super Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2$b;->a:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2$f;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2$b;->a:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->r(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;)Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VoiceModel;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2$b;->a:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VoiceModel;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VoiceModel;-><init>()V

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->s(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VoiceModel;)Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VoiceModel;

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2$b;->a:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->t(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;)Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->data:Ljava/util/List;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2$b;->a:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->r(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;)Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VoiceModel;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2$b;->a:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->r(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;)Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VoiceModel;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/form/model/VoiceModel;->middleVoice:Ljava/lang/String;

    .line 5
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2$b;->a:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;->u(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/e2;)V

    return-void
.end method
