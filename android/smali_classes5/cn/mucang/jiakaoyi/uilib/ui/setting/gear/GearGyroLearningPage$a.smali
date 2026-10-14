.class Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/signal/c/f/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage;


# direct methods
.method constructor <init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage$a;->a:Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSignalChanged(Lcn/mucang/android/jiakaoyi/signal/c/e;)V
    .locals 10

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->d()Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage$a;->a:Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage;

    invoke-static {v1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage;->h(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5f53\u524d  :  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage$a;->a:Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage;

    invoke-static {v3, v0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage;->g(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ,   ,  \u6321\u4f4d  :  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gearName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage$a;->a:Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage;

    invoke-static {p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage;->i(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage$c;

    .line 5
    iget-boolean v3, v1, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage$c;->f:Z

    if-eqz v3, :cond_0

    .line 6
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->A()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 7
    iput-boolean v2, v1, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage$c;->f:Z

    .line 8
    iget-object v4, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage$a;->a:Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage;

    iget v5, v1, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage$c;->a:I

    iget v6, v1, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage$c;->b:I

    iget v7, v1, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage$c;->c:I

    iget v8, v1, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage$c;->d:I

    iget-object v9, v1, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage$c;->e:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    invoke-static/range {v4 .. v9}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage;->j(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage;IIIILcn/mucang/android/jiakaoyi/signal/center/model/Gear;)V

    .line 9
    iget-object v2, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage$a;->a:Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage;

    invoke-static {v2}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage;->k(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage;)Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearView;

    move-result-object v2

    invoke-virtual {v2}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearView;->d()V

    .line 10
    iget-object v2, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage$a;->a:Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u5b8c\u6210"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage$c;->e:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gearName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\u5b66\u4e60"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage;->l(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage;Ljava/lang/String;)V

    .line 11
    :cond_1
    iget-object v2, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage$a;->a:Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage;

    invoke-virtual {v1, v2}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage$c;->a(Landroid/app/Activity;)V

    goto :goto_0

    .line 12
    :cond_2
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage$a;->a:Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage;

    invoke-static {p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage;->m(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 13
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->x()Z

    move-result p1

    if-nez p1, :cond_3

    .line 14
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage$a;->a:Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage;

    invoke-static {p1, v2}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage;->n(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage;Z)Z

    .line 15
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage$a;->a:Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage;

    const-string v1, "\u6807\u5b9a\u5b8c\u6210\uff0c\u73b0\u5728\u53ef\u4ee5\u5f00\u59cb\u6863\u4f4d\u5b66\u4e60\u4e86"

    invoke-static {p1, v1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage;->l(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage;Ljava/lang/String;)V

    :cond_3
    if-eqz v0, :cond_4

    .line 16
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage$a;->a:Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage;

    invoke-static {p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage;->k(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage;)Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearView;

    move-result-object p1

    iget-wide v1, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    iget-wide v3, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    invoke-virtual {p1, v1, v2, v3, v4}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearView;->e(DD)V

    .line 17
    :cond_4
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage$a;->a:Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage;

    invoke-static {p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage;->o(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearGyroLearningPage;)V

    return-void
.end method
