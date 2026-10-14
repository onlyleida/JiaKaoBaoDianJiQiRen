.class Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearAutoGyroLearningPage$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/signal/c/f/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearAutoGyroLearningPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearAutoGyroLearningPage;


# direct methods
.method constructor <init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearAutoGyroLearningPage;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearAutoGyroLearningPage$a;->a:Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearAutoGyroLearningPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSignalChanged(Lcn/mucang/android/jiakaoyi/signal/c/e;)V
    .locals 4

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/d;->l:Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    .line 2
    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearAutoGyroLearningPage$a;->a:Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearAutoGyroLearningPage;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->a:Landroidx/viewbinding/a;

    check-cast v1, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityTestAutoGearGyroDataBinding;

    iget-object v1, v1, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityTestAutoGearGyroDataBinding;->value:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5f53\u524d  :  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearAutoGyroLearningPage$a;->a:Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearAutoGyroLearningPage;

    .line 3
    invoke-static {v3, v0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearAutoGyroLearningPage;->j(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearAutoGyroLearningPage;Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ,   ,  \u6321\u4f4d  :  "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gearName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearAutoGyroLearningPage$a;->a:Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearAutoGyroLearningPage;

    invoke-static {p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearAutoGyroLearningPage;->k(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearAutoGyroLearningPage;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 6
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/d;->b(Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;)Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 7
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearAutoGyroLearningPage$a;->a:Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearAutoGyroLearningPage;

    invoke-static {v3, v1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearAutoGyroLearningPage;->j(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearAutoGyroLearningPage;Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    return-void
.end method
