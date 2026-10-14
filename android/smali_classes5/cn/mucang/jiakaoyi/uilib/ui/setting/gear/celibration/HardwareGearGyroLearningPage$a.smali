.class Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/signal/c/f/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage;


# direct methods
.method constructor <init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage$a;->a:Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSignalChanged(Lcn/mucang/android/jiakaoyi/signal/c/e;)V
    .locals 16

    move-object/from16 v0, p0

    .line 1
    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v1

    .line 2
    iget-object v2, v0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage$a;->a:Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage;

    invoke-static {v2}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage;->g(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage;)Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/o0;

    move-result-object v3

    iget v2, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->U:F

    float-to-double v4, v2

    iget v2, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->T:F

    float-to-double v6, v2

    iget v2, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->S:F

    float-to-double v8, v2

    iget v2, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->X:F

    float-to-double v10, v2

    iget v2, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->W:F

    float-to-double v12, v2

    iget v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->V:F

    float-to-double v14, v1

    invoke-virtual/range {v3 .. v15}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/o0;->o(DDDDDD)V

    .line 3
    iget-object v1, v0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage$a;->a:Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage;

    invoke-static {v1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage;->g(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage;)Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/o0;

    move-result-object v1

    invoke-virtual {v1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/o0;->g()Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v1

    .line 4
    iget-object v2, v0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage$a;->a:Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage;

    invoke-static {v2}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage;->i(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u5f53\u524d  :  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage$a;->a:Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage;

    invoke-static {v4, v1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage;->h(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ,  ,  \u6321\u4f4d  :  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v4

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gearName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v2, v0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage$a;->a:Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage;

    invoke-static {v2}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage;->j(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 6
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage$b;

    .line 7
    iget-boolean v4, v3, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage$b;->e:Z

    if-eqz v4, :cond_0

    .line 8
    iget-object v4, v0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage$a;->a:Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage;

    invoke-static {v4}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage;->g(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage;)Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/o0;

    move-result-object v4

    invoke-virtual {v4}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/o0;->m()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x0

    .line 9
    iput-boolean v4, v3, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage$b;->e:Z

    .line 10
    iget-object v4, v0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage$a;->a:Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage;

    iget v5, v3, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage$b;->a:I

    iget v6, v3, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage$b;->b:I

    iget v7, v3, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage$b;->c:I

    iget-object v8, v3, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage$b;->d:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    invoke-static {v4, v5, v6, v7, v8}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage;->k(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage;IIILcn/mucang/android/jiakaoyi/signal/center/model/Gear;)V

    .line 11
    iget-object v4, v0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage$a;->a:Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage;

    invoke-static {v4}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage;->l(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage;)Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearCalibView;

    move-result-object v4

    iget-object v5, v0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage$a;->a:Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage;

    invoke-static {v5}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage;->g(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage;)Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/o0;

    move-result-object v5

    invoke-virtual {v5}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/o0;->b()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearCalibView;->d(Ljava/util/List;)V

    .line 12
    iget-object v4, v0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage$a;->a:Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u5b8c\u6210"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage$b;->d:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget-object v6, v6, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gearName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\u5b66\u4e60"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage;->m(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage;Ljava/lang/String;)V

    .line 13
    :cond_1
    iget-object v4, v0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage$a;->a:Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage;

    invoke-virtual {v3, v4}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage$b;->a(Landroid/app/Activity;)V

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    .line 14
    iget-object v2, v0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage$a;->a:Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage;

    invoke-static {v2}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage;->l(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage;)Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearCalibView;

    move-result-object v2

    iget-wide v3, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    iget-wide v5, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    invoke-virtual {v2, v3, v4, v5, v6}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearCalibView;->e(DD)V

    .line 15
    :cond_3
    iget-object v1, v0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage$a;->a:Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage;

    invoke-static {v1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage;->n(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage;)V

    return-void
.end method
