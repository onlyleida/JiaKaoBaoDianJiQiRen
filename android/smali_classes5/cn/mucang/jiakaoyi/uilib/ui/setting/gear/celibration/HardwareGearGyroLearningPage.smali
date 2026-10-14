.class public Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage;
.super Lcn/mucang/android/jiakaoyi/framework/base/m/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage$b;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/TextView;

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;",
            "Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage$b;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z

.field private final d:Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/o0;

.field private e:Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearCalibView;

.field private final f:Lcn/mucang/android/jiakaoyi/signal/c/f/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/a;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage;->b:Ljava/util/Map;

    .line 3
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/o0;

    invoke-direct {v0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/o0;-><init>()V

    iput-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage;->d:Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/o0;

    .line 4
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage$a;

    invoke-direct {v0, p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage$a;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage;)V

    iput-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage;->f:Lcn/mucang/android/jiakaoyi/signal/c/f/a;

    return-void
.end method

.method private synthetic B(Landroid/view/View;)V
    .locals 1

    .line 1
    sget-object p1, Lcn/mucang/jiakaoyi/uilib/gear/GearDataReporter;->a:Lcn/mucang/jiakaoyi/uilib/gear/GearDataReporter;

    new-instance v0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/c0;

    invoke-direct {v0, p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/c0;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage;)V

    invoke-virtual {p1, v0}, Lcn/mucang/jiakaoyi/uilib/gear/GearDataReporter;->j(Lcn/mucang/jiakaoyi/uilib/gear/f;)V

    return-void
.end method

.method private synthetic D(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage;->d:Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/o0;

    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/o0;->b()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "\u6ca1\u6709\u6321\u4f4d\u6570\u636e"

    .line 2
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage;->d:Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/o0;

    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/o0;->b()Ljava/util/List;

    move-result-object p1

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u4e0b\u53d1\u786c\u4ef6\u6321\u4f4d\u6570\u636e\u538b\u7f29\u524d\uff1a "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 5
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/gear/entity/GearEntity;

    invoke-direct {v0}, Lcn/mucang/jiakaoyi/uilib/gear/entity/GearEntity;-><init>()V

    .line 6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 7
    invoke-virtual {v0, v1}, Lcn/mucang/jiakaoyi/uilib/gear/entity/GearEntity;->setGearTracks(Ljava/util/List;)V

    .line 8
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    .line 9
    invoke-static {v2}, Lcn/mucang/jiakaoyi/uilib/gear/entity/a;->a(Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;)Lcn/mucang/jiakaoyi/uilib/gear/entity/GearTrack;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    const/16 v1, 0xf

    if-le p1, v1, :cond_2

    const-string p1, "\u91c7\u70b9\u6570\u91cf\u8d85\u8fc715\u4e2a,\u65e0\u6cd5\u4e0b\u53d1"

    .line 11
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void

    .line 12
    :cond_2
    invoke-static {v0}, Lcn/mucang/jiakaoyi/uilib/gear/e;->a(Lcn/mucang/jiakaoyi/uilib/gear/entity/GearEntity;)[B

    move-result-object p1

    if-nez p1, :cond_3

    const-string p1, "\u6321\u4f4d\u6570\u636e\u6709\u95ee\u9898"

    .line 13
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 14
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u4e0b\u53d1\u7ed9\u4e3b\u63a7\u7684\u6863\u4f4d\u6570\u636e\u51fa\u73b0\u95ee\u9898 "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    return-void

    .line 15
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u4e0b\u53d1\u786c\u4ef6\u6321\u4f4d\u6570\u636e\u538b\u7f29\u540e\uff1a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 16
    sget-object v0, Lcn/mucang/jiakaoyi/uilib/gear/RemoteGearSetter;->a:Lcn/mucang/jiakaoyi/uilib/gear/RemoteGearSetter;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcn/mucang/jiakaoyi/uilib/gear/RemoteGearSetter;->t([BI)V

    return-void
.end method

.method private synthetic F(IIILcn/mucang/android/jiakaoyi/signal/center/model/Gear;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage;->T(IIILcn/mucang/android/jiakaoyi/signal/center/model/Gear;)V

    return-void
.end method

.method private synthetic H(Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage;->U(Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;)V

    return-void
.end method

.method private synthetic J(IIILcn/mucang/android/jiakaoyi/signal/center/model/Gear;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage;->T(IIILcn/mucang/android/jiakaoyi/signal/center/model/Gear;)V

    return-void
.end method

.method private synthetic L(Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;Ljava/lang/String;IIILandroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    iget-object p6, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage;->d:Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/o0;

    invoke-virtual {p6, p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/o0;->k(Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;)Z

    .line 2
    invoke-direct {p0, p2}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage;->V(Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage;->b:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage$b;

    if-nez p2, :cond_0

    .line 4
    iget-object p2, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage;->b:Ljava/util/Map;

    new-instance p6, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage$b;

    invoke-direct {p6, p3, p4, p5, p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage$b;-><init>(IIILcn/mucang/android/jiakaoyi/signal/center/model/Gear;)V

    invoke-interface {p2, p1, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p2, p6

    :cond_0
    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p2, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage$b;->e:Z

    return-void
.end method

.method private synthetic N()V
    .locals 7

    const-string v0, "gyro_gear_sensor_value_version_new"

    .line 1
    iget-boolean v1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage;->c:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 2
    iput-boolean v1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage;->c:Z

    const/4 v1, 0x0

    .line 3
    :try_start_0
    iget-object v2, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage;->d:Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/o0;

    invoke-virtual {v2}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/o0;->b()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_8

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 4
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_9

    .line 5
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    iget v5, v5, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->gear:I

    sget-object v6, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearN:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v6, v6, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    if-ne v5, v6, :cond_1

    or-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 6
    :cond_1
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    iget v5, v5, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->gear:I

    sget-object v6, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear1:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v6, v6, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    if-ne v5, v6, :cond_2

    or-int/lit8 v4, v4, 0x2

    goto :goto_1

    .line 7
    :cond_2
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    iget v5, v5, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->gear:I

    sget-object v6, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear2:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v6, v6, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    if-ne v5, v6, :cond_3

    or-int/lit8 v4, v4, 0x4

    goto :goto_1

    .line 8
    :cond_3
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    iget v5, v5, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->gear:I

    sget-object v6, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear3:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v6, v6, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    if-ne v5, v6, :cond_4

    or-int/lit8 v4, v4, 0x8

    goto :goto_1

    .line 9
    :cond_4
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    iget v5, v5, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->gear:I

    sget-object v6, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear4:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v6, v6, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    if-ne v5, v6, :cond_5

    or-int/lit8 v4, v4, 0x10

    goto :goto_1

    .line 10
    :cond_5
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    iget v5, v5, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->gear:I

    sget-object v6, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear5:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v6, v6, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    if-ne v5, v6, :cond_6

    or-int/lit8 v4, v4, 0x20

    goto :goto_1

    .line 11
    :cond_6
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    iget v5, v5, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->gear:I

    sget-object v6, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearBack:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v6, v6, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    if-ne v5, v6, :cond_7

    or-int/lit8 v4, v4, 0x40

    :cond_7
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_8
    const/4 v4, 0x0

    :cond_9
    const/16 v3, 0x7f

    if-ne v4, v3, :cond_a

    .line 12
    invoke-static {v2}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 13
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    .line 14
    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->d(Ljava/lang/String;I)I

    move-result v4

    if-eq v3, v4, :cond_a

    .line 15
    new-instance v4, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/q0;

    invoke-direct {v4}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/q0;-><init>()V

    invoke-virtual {v4, v2}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/q0;->m(Ljava/lang/String;)V

    .line 16
    invoke-static {v0, v3}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->k(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    :cond_a
    :goto_2
    iput-boolean v1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage;->c:Z

    goto :goto_3

    :catchall_0
    move-exception v0

    :try_start_1
    const-string v2, "TAG"

    .line 18
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcn/mucang/android/core/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :goto_3
    return-void

    :catchall_1
    move-exception v0

    .line 19
    iput-boolean v1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage;->c:Z

    throw v0
.end method

.method public static P(Landroid/content/Context;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private Q()V
    .locals 4

    .line 1
    sget v0, Lcom/mucang/android/jiakaoyi/uilib/R$id;->g0:I

    sget v1, Lcom/mucang/android/jiakaoyi/uilib/R$id;->g0_path1:I

    sget v2, Lcom/mucang/android/jiakaoyi/uilib/R$id;->g0_stop:I

    sget-object v3, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearN:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    invoke-direct {p0, v0, v1, v2, v3}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage;->R(IIILcn/mucang/android/jiakaoyi/signal/center/model/Gear;)V

    .line 2
    sget v0, Lcom/mucang/android/jiakaoyi/uilib/R$id;->g1:I

    sget v1, Lcom/mucang/android/jiakaoyi/uilib/R$id;->g1_path1:I

    sget v2, Lcom/mucang/android/jiakaoyi/uilib/R$id;->g1_stop:I

    sget-object v3, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear1:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    invoke-direct {p0, v0, v1, v2, v3}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage;->R(IIILcn/mucang/android/jiakaoyi/signal/center/model/Gear;)V

    .line 3
    sget v0, Lcom/mucang/android/jiakaoyi/uilib/R$id;->g2:I

    sget v1, Lcom/mucang/android/jiakaoyi/uilib/R$id;->g2_path1:I

    sget v2, Lcom/mucang/android/jiakaoyi/uilib/R$id;->g2_stop:I

    sget-object v3, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear2:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    invoke-direct {p0, v0, v1, v2, v3}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage;->R(IIILcn/mucang/android/jiakaoyi/signal/center/model/Gear;)V

    .line 4
    sget v0, Lcom/mucang/android/jiakaoyi/uilib/R$id;->g3:I

    sget v1, Lcom/mucang/android/jiakaoyi/uilib/R$id;->g3_path1:I

    sget v2, Lcom/mucang/android/jiakaoyi/uilib/R$id;->g3_stop:I

    sget-object v3, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear3:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    invoke-direct {p0, v0, v1, v2, v3}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage;->R(IIILcn/mucang/android/jiakaoyi/signal/center/model/Gear;)V

    .line 5
    sget v0, Lcom/mucang/android/jiakaoyi/uilib/R$id;->g4:I

    sget v1, Lcom/mucang/android/jiakaoyi/uilib/R$id;->g4_path1:I

    sget v2, Lcom/mucang/android/jiakaoyi/uilib/R$id;->g4_stop:I

    sget-object v3, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear4:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    invoke-direct {p0, v0, v1, v2, v3}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage;->R(IIILcn/mucang/android/jiakaoyi/signal/center/model/Gear;)V

    .line 6
    sget v0, Lcom/mucang/android/jiakaoyi/uilib/R$id;->g5:I

    sget v1, Lcom/mucang/android/jiakaoyi/uilib/R$id;->g5_path1:I

    sget v2, Lcom/mucang/android/jiakaoyi/uilib/R$id;->g5_stop:I

    sget-object v3, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear5:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    invoke-direct {p0, v0, v1, v2, v3}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage;->R(IIILcn/mucang/android/jiakaoyi/signal/center/model/Gear;)V

    .line 7
    sget v0, Lcom/mucang/android/jiakaoyi/uilib/R$id;->gb:I

    sget v1, Lcom/mucang/android/jiakaoyi/uilib/R$id;->gb_path1:I

    sget v2, Lcom/mucang/android/jiakaoyi/uilib/R$id;->gb_stop:I

    sget-object v3, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearBack:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    invoke-direct {p0, v0, v1, v2, v3}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage;->R(IIILcn/mucang/android/jiakaoyi/signal/center/model/Gear;)V

    return-void
.end method

.method private R(IIILcn/mucang/android/jiakaoyi/signal/center/model/Gear;)V
    .locals 14

    move-object v6, p0

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    .line 1
    iget-object v0, v6, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage;->b:Ljava/util/Map;

    invoke-interface {v0, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, v6, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage;->b:Ljava/util/Map;

    new-instance v1, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage$b;

    move v2, p1

    invoke-direct {v1, p1, v3, v4, v5}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage$b;-><init>(IIILcn/mucang/android/jiakaoyi/signal/center/model/Gear;)V

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    move v2, p1

    .line 3
    :goto_0
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/widget/TextView;

    .line 4
    invoke-virtual {p0, v3}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/widget/TextView;

    .line 5
    invoke-virtual {p0, v4}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/widget/TextView;

    .line 6
    iget-object v0, v6, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage;->d:Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/o0;

    invoke-virtual {v0, v5}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/o0;->f(Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;)Ljava/util/List;

    move-result-object v10

    .line 7
    new-instance v11, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/h0;

    invoke-direct {v11, p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/h0;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage;)V

    .line 8
    new-instance v12, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/d0;

    invoke-direct {v12, p0, v5}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/d0;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage;Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;)V

    .line 9
    new-instance v13, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/a0;

    move-object v0, v13

    move-object v1, p0

    move v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/a0;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage;IIILcn/mucang/android/jiakaoyi/signal/center/model/Gear;)V

    .line 10
    invoke-virtual {v7, v13}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz v10, :cond_2

    .line 13
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 14
    :cond_1
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    const/4 v0, 0x0

    .line 15
    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 16
    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u8def\u5f841,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->area()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v0, 0x4

    .line 18
    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3
    :goto_2
    return-void
.end method

.method private S(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Ljava/lang/String;
    .locals 4

    if-nez p1, :cond_0

    const-string p1, "0,0,0"

    return-object p1

    .line 1
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    invoke-direct {p0, v1, v2}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage;->W(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " , "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    invoke-direct {p0, v2, v3}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage;->W(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->z:D

    invoke-direct {p0, v1, v2}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage;->W(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private T(IIILcn/mucang/android/jiakaoyi/signal/center/model/Gear;)V
    .locals 12

    move-object v7, p0

    move-object/from16 v5, p4

    .line 1
    iget-object v0, v7, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage$b;

    iget-boolean v1, v1, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage$b;->e:Z

    if-eqz v1, :cond_0

    return-void

    .line 3
    :cond_1
    iget-object v0, v7, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage;->d:Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/o0;

    invoke-virtual {v0, v5}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/o0;->f(Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 5
    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearN:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-ne v5, v2, :cond_2

    .line 6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_3

    const-string v0, "\u7a7a\u6863\u53ea\u80fd\u5b66\u4e60\u4e00\u4e2a\u4f4d\u7f6e\uff0c\u5982\u679c\u8981\u91cd\u65b0\u5b66\u4e60\uff0c\u8bf7\u5148\u5220\u9664\u5f53\u524d\u6570\u636e"

    .line 7
    invoke-direct {p0, v0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage;->V(Ljava/lang/String;)V

    return-void

    .line 8
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_3

    const-string v0, "\u6700\u591a\u53ea\u80fd\u5b66\u4e601\u4e2a\u8def\u5f84"

    .line 9
    invoke-direct {p0, v0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage;->V(Ljava/lang/String;)V

    return-void

    .line 10
    :cond_3
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearN:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    const/4 v2, 0x0

    if-eq v5, v0, :cond_6

    .line 11
    iget-object v3, v7, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage;->d:Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/o0;

    invoke-virtual {v3, v0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/o0;->f(Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 12
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_5

    .line 13
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    .line 14
    iget v3, v3, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->gear:I

    sget-object v4, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearN:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v4, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    if-ne v3, v4, :cond_4

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_6

    const-string v0, "\u8bf7\u5148\u5b66\u4e60\u7a7a\u6863"

    .line 15
    invoke-direct {p0, v0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage;->V(Ljava/lang/String;)V

    return-void

    .line 16
    :cond_6
    iget-object v0, v7, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage;->d:Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/o0;

    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/o0;->j()Z

    move-result v0

    const/4 v8, 0x0

    const-string v9, "\u53d6\u6d88"

    if-nez v0, :cond_7

    .line 17
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->H()V

    .line 18
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->GlobalTip:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    const-string v1, "\u9640\u87ba\u4eea\u89d2\u5ea6\u4e0d\u5408\u7406\uff0c\u8bf7\u6b63\u786e\u5b89\u88c5\uff0c\u6216\u8005\u7ed9\u63a7\u5236\u76d2\u65ad\u753530\u79d2\u518d\u91cd\u8bd5"

    invoke-static {v1, v0}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->r(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;)V

    .line 19
    new-instance v0, Landroidx/appcompat/app/c$a;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/c$a;-><init>(Landroid/content/Context;)V

    const-string v1, "\u9640\u87ba\u4eea\u89d2\u5ea6\u4e0d\u6b63\u786e"

    .line 20
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/c$a;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/c$a;

    move-result-object v0

    const-string v1, "\u8bf7\u786e\u5b9a\u5b89\u88c5\u662f\u5426\u6b63\u786e\uff0c\u6216\u8005\u5c06\u63a7\u5236\u76d2\u65ad\u753530\u79d2\u540e\u518d\u91cd\u8bd5"

    .line 21
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/c$a;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/c$a;

    move-result-object v6

    new-instance v10, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/i0;

    move-object v0, v10

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/i0;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage;IIILcn/mucang/android/jiakaoyi/signal/center/model/Gear;)V

    const-string v0, "\u91cd\u8bd5"

    .line 22
    invoke-virtual {v6, v0, v10}, Landroidx/appcompat/app/c$a;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/c$a;

    move-result-object v0

    .line 23
    invoke-virtual {v0, v9, v8}, Landroidx/appcompat/app/c$a;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/c$a;

    move-result-object v0

    .line 24
    invoke-virtual {v0}, Landroidx/appcompat/app/c$a;->create()Landroidx/appcompat/app/c;

    move-result-object v0

    .line 25
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void

    .line 26
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u8bf7\u5c06\u6863\u4f4d\u6302\u5230"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v5, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gearName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u540e\uff0c\u70b9\u51fb\u5f00\u59cb"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u8bf7\u5728"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v5, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gearName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\u7684\u5404\u4e2a\u65b9\u5411\u6765\u56de\u6446\u52a8\u6863\u6746"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 28
    new-instance v1, Landroidx/appcompat/app/c$a;

    invoke-direct {v1, p0}, Landroidx/appcompat/app/c$a;-><init>(Landroid/content/Context;)V

    .line 29
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/c$a;->setCancelable(Z)Landroidx/appcompat/app/c$a;

    move-result-object v1

    .line 30
    invoke-virtual {v1, v0}, Landroidx/appcompat/app/c$a;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/c$a;

    move-result-object v10

    new-instance v11, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/b0;

    move-object v0, v11

    move-object v1, p0

    move-object/from16 v2, p4

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/b0;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage;Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;Ljava/lang/String;III)V

    const-string v0, "\u5f00\u59cb"

    .line 31
    invoke-virtual {v10, v0, v11}, Landroidx/appcompat/app/c$a;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/c$a;

    move-result-object v0

    .line 32
    invoke-virtual {v0, v9, v8}, Landroidx/appcompat/app/c$a;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/c$a;

    move-result-object v0

    .line 33
    invoke-virtual {v0}, Landroidx/appcompat/app/c$a;->create()Landroidx/appcompat/app/c;

    move-result-object v0

    .line 34
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private U(Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage;->d:Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/o0;

    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/o0;->stop()V

    return-void
.end method

.method private V(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->H()V

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->GlobalTip:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->r(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;)V

    .line 3
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 4
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    return-void
.end method

.method private W(D)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v0, p2

    const-string p1, "%.1f"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private X()V
    .locals 1

    .line 1
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/g0;

    invoke-direct {v0, p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/g0;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage;)V

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/n0;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic g(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage;)Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/o0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage;->d:Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/o0;

    return-object p0
.end method

.method static synthetic h(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage;->S(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic i(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage;->a:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic j(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage;->b:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic k(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage;IIILcn/mucang/android/jiakaoyi/signal/center/model/Gear;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage;->R(IIILcn/mucang/android/jiakaoyi/signal/center/model/Gear;)V

    return-void
.end method

.method static synthetic l(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage;)Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearCalibView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage;->e:Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearCalibView;

    return-object p0
.end method

.method static synthetic m(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage;->V(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic n(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage;->Q()V

    return-void
.end method

.method private o(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage;->e:Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearCalibView;

    invoke-virtual {v0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearCalibView;->setChoose(Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;)V

    .line 3
    new-instance v0, Landroidx/appcompat/app/c$a;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/c$a;-><init>(Landroid/content/Context;)V

    const-string v1, "\u5220\u9664\u8fd9\u4e2a\u6863\u4f4d\u6570\u636e?"

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/c$a;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/c$a;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "\u4e0d\u5220\u9664"

    .line 4
    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/app/c$a;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/c$a;

    move-result-object v0

    new-instance v1, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/j0;

    invoke-direct {v1, p0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/j0;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage;Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;)V

    const-string p1, "\u5220\u9664"

    .line 5
    invoke-virtual {v0, p1, v1}, Landroidx/appcompat/app/c$a;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/c$a;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Landroidx/appcompat/app/c$a;->create()Landroidx/appcompat/app/c;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private p()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage$b;

    .line 3
    iget-boolean v1, v1, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage$b;->e:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private synthetic q(Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    new-instance p2, Landroidx/appcompat/app/c$a;

    invoke-direct {p2, p0}, Landroidx/appcompat/app/c$a;-><init>(Landroid/content/Context;)V

    const-string p3, "\u786e\u5b9a\u5220\u9664?"

    .line 2
    invoke-virtual {p2, p3}, Landroidx/appcompat/app/c$a;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/c$a;

    move-result-object p2

    new-instance p3, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/y;

    invoke-direct {p3, p0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/y;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage;Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;)V

    const-string p1, "\u786e\u5b9a\u5220\u9664"

    .line 3
    invoke-virtual {p2, p1, p3}, Landroidx/appcompat/app/c$a;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/c$a;

    move-result-object p1

    const-string p2, "\u4e0d\u5220\u9664"

    const/4 p3, 0x0

    .line 4
    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/app/c$a;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/c$a;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Landroidx/appcompat/app/c$a;->create()Landroidx/appcompat/app/c;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public static synthetic s(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage;->o(Landroid/view/View;)V

    return-void
.end method

.method private synthetic t(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage;->d:Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/o0;

    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/o0;->stop()V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private synthetic v(Lcn/mucang/android/jiakaoyi/signal/communicate/receive/s;)V
    .locals 2

    if-nez p1, :cond_0

    const-string p1, "\u83b7\u53d6\u786c\u4ef6\u6321\u4f4d\u6570\u636e\u4e3anull"

    .line 1
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void

    .line 2
    :cond_0
    iget-boolean v0, p1, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/m;->a:Z

    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/s;->a()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const-string p1, "\u83b7\u53d6\u6321\u4f4d\u6570\u636e\u4e0d\u662f\u533a\u57df\u6cd5"

    .line 4
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v0, "\u83b7\u53d6\u533a\u57df\u6cd5\u786c\u4ef6\u6321\u4f4d\u6570\u636e\u6210\u529f"

    .line 5
    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/s;->b()Lcn/mucang/android/jiakaoyi/signal/communicate/r;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->a()[B

    move-result-object p1

    .line 7
    sget-object v0, Lcn/mucang/jiakaoyi/uilib/gear/e;->a:Lcn/mucang/jiakaoyi/uilib/gear/e$a;

    invoke-virtual {v0, p1, v1}, Lcn/mucang/jiakaoyi/uilib/gear/e$a;->f([BZ)[B

    move-result-object p1

    if-eqz p1, :cond_2

    .line 8
    array-length v1, p1

    if-lez v1, :cond_2

    .line 9
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcn/mucang/jiakaoyi/uilib/gear/e$a;->b(Ljava/nio/ByteBuffer;)Lcn/mucang/jiakaoyi/uilib/gear/entity/GearEntity;

    move-result-object p1

    .line 10
    invoke-static {p1}, Lcn/mucang/jiakaoyi/uilib/gear/entity/a;->b(Lcn/mucang/jiakaoyi/uilib/gear/entity/GearEntity;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 11
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage;->d:Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/o0;

    invoke-virtual {v0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/o0;->e(Ljava/util/List;)V

    .line 12
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage;->d:Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/o0;

    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/o0;->r()Z

    .line 13
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage;->e:Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearCalibView;

    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage;->d:Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/o0;

    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/o0;->b()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearCalibView;->d(Ljava/util/List;)V

    :cond_2
    return-void
.end method

.method private synthetic x(Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage;->d:Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/o0;

    invoke-virtual {p2, p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/o0;->i(Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;)V

    .line 2
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage;->e:Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearCalibView;

    iget-object p2, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage;->d:Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/o0;

    invoke-virtual {p2}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/o0;->b()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearCalibView;->d(Ljava/util/List;)V

    .line 3
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage;->Q()V

    return-void
.end method

.method private synthetic z(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage;->p()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    new-instance p1, Landroidx/appcompat/app/c$a;

    invoke-direct {p1, p0}, Landroidx/appcompat/app/c$a;-><init>(Landroid/content/Context;)V

    const-string v0, "\u6b63\u5728\u6321\u4f4d\u6821\u51c6\uff0c\u786e\u5b9a\u9000\u51fa?"

    .line 3
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/c$a;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/c$a;

    move-result-object p1

    new-instance v0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/k0;

    invoke-direct {v0, p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/k0;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage;)V

    const-string v1, "\u9000\u51fa"

    .line 4
    invoke-virtual {p1, v1, v0}, Landroidx/appcompat/app/c$a;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/c$a;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "\u4e0d\u9000\u51fa"

    .line 5
    invoke-virtual {p1, v1, v0}, Landroidx/appcompat/app/c$a;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/c$a;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Landroidx/appcompat/app/c$a;->create()Landroidx/appcompat/app/c;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void

    .line 7
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method


# virtual methods
.method public synthetic A(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage;->z(Landroid/view/View;)V

    return-void
.end method

.method public synthetic C(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage;->B(Landroid/view/View;)V

    return-void
.end method

.method public synthetic E(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage;->D(Landroid/view/View;)V

    return-void
.end method

.method public synthetic G(IIILcn/mucang/android/jiakaoyi/signal/center/model/Gear;Landroid/view/View;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage;->F(IIILcn/mucang/android/jiakaoyi/signal/center/model/Gear;Landroid/view/View;)V

    return-void
.end method

.method public synthetic I(Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage;->H(Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;Landroid/view/View;)V

    return-void
.end method

.method public synthetic K(IIILcn/mucang/android/jiakaoyi/signal/center/model/Gear;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage;->J(IIILcn/mucang/android/jiakaoyi/signal/center/model/Gear;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public synthetic M(Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;Ljava/lang/String;IIILandroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage;->L(Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;Ljava/lang/String;IIILandroid/content/DialogInterface;I)V

    return-void
.end method

.method public synthetic O()V
    .locals 0

    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage;->N()V

    return-void
.end method

.method public getStatName()Ljava/lang/String;
    .locals 1

    const-string v0, "\u6321\u4f4d\u4f20\u611f\u5668\u6807\u5b9a\u9875\u9762"

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcn/mucang/android/jiakaoyi/framework/base/m/a;->onCreate(Landroid/os/Bundle;)V

    .line 2
    sget p1, Lcom/mucang/android/jiakaoyi/uilib/R$layout;->activity_test_hardware_gear_gyro_data:I

    invoke-virtual {p0, p1}, Lcn/mucang/android/core/config/n;->setContentView(I)V

    .line 3
    sget p1, Lcom/mucang/android/jiakaoyi/uilib/R$id;->value:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage;->a:Landroid/widget/TextView;

    .line 4
    sget p1, Lcom/mucang/android/jiakaoyi/uilib/R$id;->mapView:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearCalibView;

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage;->e:Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearCalibView;

    .line 5
    sget p1, Lcom/mucang/android/jiakaoyi/uilib/R$id;->finish:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/f0;

    invoke-direct {v0, p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/f0;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    sget-object p1, Lcn/mucang/android/jiakaoyi/signal/c/d;->m:Lcn/mucang/android/jiakaoyi/signal/c/d;

    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage;->f:Lcn/mucang/android/jiakaoyi/signal/c/f/a;

    invoke-virtual {p1, v0}, Lcn/mucang/android/jiakaoyi/signal/c/d;->b(Lcn/mucang/android/jiakaoyi/signal/c/f/a;)V

    .line 7
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage;->d:Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/o0;

    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/o0;->r()Z

    .line 8
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage;->e:Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearCalibView;

    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage;->d:Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/o0;

    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/o0;->b()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearCalibView;->d(Ljava/util/List;)V

    .line 9
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage;->Q()V

    .line 10
    sget p1, Lcom/mucang/android/jiakaoyi/uilib/R$id;->getHardwareData:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/e0;

    invoke-direct {v0, p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/e0;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    sget p1, Lcom/mucang/android/jiakaoyi/uilib/R$id;->sendToMaster:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/z;

    invoke-direct {v0, p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/z;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcn/mucang/android/core/config/n;->onDestroy()V

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/c/d;->m:Lcn/mucang/android/jiakaoyi/signal/c/d;

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage;->f:Lcn/mucang/android/jiakaoyi/signal/c/f/a;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/c/d;->n(Lcn/mucang/android/jiakaoyi/signal/c/f/a;)V

    .line 3
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage;->d:Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/o0;

    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/o0;->stop()V

    .line 4
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage;->X()V

    return-void
.end method

.method public synthetic r(Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage;->q(Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public synthetic u(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage;->t(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public synthetic w(Lcn/mucang/android/jiakaoyi/signal/communicate/receive/s;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage;->v(Lcn/mucang/android/jiakaoyi/signal/communicate/receive/s;)V

    return-void
.end method

.method public synthetic y(Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/HardwareGearGyroLearningPage;->x(Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;Landroid/content/DialogInterface;I)V

    return-void
.end method
