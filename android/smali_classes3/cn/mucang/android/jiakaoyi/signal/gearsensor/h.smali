.class public Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Z

.field private static volatile b:F

.field private static volatile c:F

.field private static volatile d:F

.field private static volatile e:Z

.field private static volatile f:Z

.field private static volatile g:Z

.field public static volatile h:Z

.field private static i:Lcn/mucang/android/jiakaoyi/signal/gearsensor/i;

.field private static volatile j:Z

.field private static final k:Lcn/mucang/android/jiakaoyi/framework/utils/r0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/mucang/android/jiakaoyi/framework/utils/r0<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final l:Lcn/mucang/android/jiakaoyi/framework/utils/r0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/mucang/android/jiakaoyi/framework/utils/r0<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final m:Lcn/mucang/android/jiakaoyi/framework/utils/r0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/mucang/android/jiakaoyi/framework/utils/r0<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final n:Lcn/mucang/android/jiakaoyi/framework/utils/r0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/mucang/android/jiakaoyi/framework/utils/r0<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final o:Lcn/mucang/android/jiakaoyi/framework/utils/r0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/mucang/android/jiakaoyi/framework/utils/r0<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v1, "key_use_area_fun_gear"

    invoke-static {v1, v0}, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->d(Ljava/lang/String;Ljava/lang/Boolean;)Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    move-result-object v1

    sput-object v1, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->k:Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    const-string v1, "key_use_area_fun_gear_tu"

    .line 2
    invoke-static {v1, v0}, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->d(Ljava/lang/String;Ljava/lang/Boolean;)Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    move-result-object v1

    sput-object v1, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->l:Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    const-string v1, "key_use_area_cal_like"

    .line 3
    invoke-static {v1, v0}, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->d(Ljava/lang/String;Ljava/lang/Boolean;)Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    move-result-object v1

    sput-object v1, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->m:Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    .line 4
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, "key_use_area_cal_once"

    invoke-static {v2, v1}, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->d(Ljava/lang/String;Ljava/lang/Boolean;)Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    move-result-object v1

    sput-object v1, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->n:Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    const-string v1, "key_not_cal_when_no_clutch"

    .line 5
    invoke-static {v1, v0}, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->d(Ljava/lang/String;Ljava/lang/Boolean;)Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    move-result-object v0

    sput-object v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->o:Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    return-void
.end method

.method public static A()Z
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->i:Lcn/mucang/android/jiakaoyi/signal/gearsensor/i;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/i;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static B()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->a:Z

    return v0
.end method

.method public static C()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->i:Lcn/mucang/android/jiakaoyi/signal/gearsensor/i;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/i;->h()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static D()Z
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->o:Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static E(ZZ)V
    .locals 1

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->i:Lcn/mucang/android/jiakaoyi/signal/gearsensor/i;

    check-cast v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;

    invoke-virtual {v0, p0, p1}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->B(ZZ)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->v()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->i:Lcn/mucang/android/jiakaoyi/signal/gearsensor/i;

    check-cast v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;

    invoke-virtual {v0, p0, p1}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;->C(ZZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static F()Z
    .locals 5

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear1:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->l(Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;)Ljava/util/List;

    move-result-object v0

    .line 2
    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearBack:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->l(Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;)Ljava/util/List;

    move-result-object v1

    .line 3
    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearN:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->l(Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    .line 4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->roll:F

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    iget v4, v4, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->roll:F

    sub-float/2addr v0, v4

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->roll:F

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

    iget v2, v2, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->roll:F

    sub-float/2addr v1, v2

    mul-float v0, v0, v1

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    const/4 v3, 0x1

    :cond_1
    :goto_0
    return v3
.end method

.method public static G()V
    .locals 0

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->f()V

    return-void
.end method

.method public static H(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->i:Lcn/mucang/android/jiakaoyi/signal/gearsensor/i;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p0}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/i;->e(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public static I(Z)V
    .locals 3

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->k:Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 2
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->j(Ljava/lang/Object;)V

    .line 3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u8bbe\u7f6e\u662f\u5426\u533a\u57df\u6cd5\u5224\u65ad\u6863\u4f4d:"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->b()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 4
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->b()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    if-nez v1, :cond_0

    .line 5
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->f()V

    :cond_0
    return-void
.end method

.method public static J(DDDDDD)V
    .locals 13

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->t()V

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->i:Lcn/mucang/android/jiakaoyi/signal/gearsensor/i;

    if-eqz v0, :cond_0

    move-wide v1, p0

    move-wide v3, p2

    move-wide/from16 v5, p4

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    move-wide/from16 v11, p10

    .line 3
    invoke-interface/range {v0 .. v12}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/i;->o(DDDDDD)V

    :cond_0
    return-void
.end method

.method public static K(F)V
    .locals 1

    .line 1
    sput p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->b:F

    const-string v0, "key_gear_percent_width"

    .line 2
    invoke-static {v0, p0}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->j(Ljava/lang/String;F)V

    const/4 p0, 0x0

    .line 3
    sput-boolean p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->j:Z

    return-void
.end method

.method public static L(F)V
    .locals 1

    .line 1
    sput p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->d:F

    const-string v0, "key_gear_percent_width_bottom"

    .line 2
    invoke-static {v0, p0}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->j(Ljava/lang/String;F)V

    const/4 p0, 0x0

    .line 3
    sput-boolean p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->j:Z

    return-void
.end method

.method public static M(Z)V
    .locals 1

    .line 1
    sput-boolean p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->a:Z

    const-string v0, "key_judge_gear_when_clutch"

    .line 2
    invoke-static {v0, p0}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->i(Ljava/lang/String;Z)V

    .line 3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u8bbe\u7f6e\u8e29\u79bb\u5408\u65f6\u662f\u5426\u8ba1\u7b97\u6863\u4f4d:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->a:Z

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    return-void
.end method

.method public static N(Z)V
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->o:Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->j(Ljava/lang/Object;)V

    return-void
.end method

.method public static O(Z)V
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->m:Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->j(Ljava/lang/Object;)V

    return-void
.end method

.method public static P(Z)V
    .locals 1

    .line 1
    sput-boolean p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->f:Z

    .line 2
    sget-boolean p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->f:Z

    const-string v0, "key_trust_ext_gear"

    invoke-static {v0, p0}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->i(Ljava/lang/String;Z)V

    .line 3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u8bbe\u7f6e\u662f\u5426\u4fe1\u4efb\u6269\u5c55\u6863\u4f4d:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->f:Z

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    return-void
.end method

.method public static Q(Z)V
    .locals 1

    .line 1
    sput-boolean p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->e:Z

    .line 2
    sget-boolean p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->e:Z

    const-string v0, "key_trust_obd_back_gear"

    invoke-static {v0, p0}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->i(Ljava/lang/String;Z)V

    .line 3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u8bbe\u7f6e\u662f\u5426\u4fe1\u4efbobd\u5012\u6863:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->e:Z

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    return-void
.end method

.method public static R(F)V
    .locals 1

    .line 1
    sput p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->c:F

    const-string v0, "key_value_percent"

    .line 2
    invoke-static {v0, p0}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->j(Ljava/lang/String;F)V

    const/4 p0, 0x0

    .line 3
    sput-boolean p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->j:Z

    return-void
.end method

.method public static S(Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;)Z
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->i:Lcn/mucang/android/jiakaoyi/signal/gearsensor/i;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/i;->k(Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static T()V
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->i:Lcn/mucang/android/jiakaoyi/signal/gearsensor/i;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/i;->stop()V

    :cond_0
    return-void
.end method

.method public static U()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->f:Z

    return v0
.end method

.method public static V(JZLcn/mucang/android/jiakaoyi/signal/center/model/Gear;II)Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;
    .locals 7

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->i:Lcn/mucang/android/jiakaoyi/signal/gearsensor/i;

    if-eqz v0, :cond_0

    move-wide v1, p0

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    .line 2
    invoke-interface/range {v0 .. v6}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/i;->l(JZLcn/mucang/android/jiakaoyi/signal/center/model/Gear;II)Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    sget-object p0, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Invalid:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    return-object p0
.end method

.method public static W()Z
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->l:Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static X()Z
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->i:Lcn/mucang/android/jiakaoyi/signal/gearsensor/i;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/i;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static a(Z)V
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->n:Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->j(Ljava/lang/Object;)V

    return-void
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->i:Lcn/mucang/android/jiakaoyi/signal/gearsensor/i;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/i;->n()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static c()Z
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->i:Lcn/mucang/android/jiakaoyi/signal/gearsensor/i;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/i;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static d()Lcn/mucang/android/jiakaoyi/signal/pos/Pos;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->i:Lcn/mucang/android/jiakaoyi/signal/gearsensor/i;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/i;->g()Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static e(Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;)V
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->i:Lcn/mucang/android/jiakaoyi/signal/gearsensor/i;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p0}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/i;->i(Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;)V

    :cond_0
    return-void
.end method

.method private static f()V
    .locals 4

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->i:Lcn/mucang/android/jiakaoyi/signal/gearsensor/i;

    const-string v0, "bream\u7b97\u6cd5"

    .line 3
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    return-void

    .line 4
    :cond_0
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;-><init>()V

    .line 5
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->v()Z

    move-result v1

    const-string v2, "sheep\u7b97\u6cd5"

    if-eqz v1, :cond_1

    .line 6
    sput-object v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->i:Lcn/mucang/android/jiakaoyi/signal/gearsensor/i;

    .line 7
    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    return-void

    .line 8
    :cond_1
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;-><init>()V

    .line 9
    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/b;->u()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 10
    sput-object v1, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->i:Lcn/mucang/android/jiakaoyi/signal/gearsensor/i;

    const-string v0, "\u8001\u7b97\u6cd5"

    .line 11
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    goto :goto_0

    .line 12
    :cond_2
    sput-object v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->i:Lcn/mucang/android/jiakaoyi/signal/gearsensor/i;

    .line 13
    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static g()V
    .locals 1

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;-><init>()V

    .line 2
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;->v()Z

    .line 3
    sput-object v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->i:Lcn/mucang/android/jiakaoyi/signal/gearsensor/i;

    return-void
.end method

.method public static h()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->i:Lcn/mucang/android/jiakaoyi/signal/gearsensor/i;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/i;->b()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static i()F
    .locals 2

    const-string v0, "key_gear_percent_width_bottom"

    const/high16 v1, 0x3f000000    # 0.5f

    .line 1
    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->c(Ljava/lang/String;F)F

    move-result v0

    sput v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->d:F

    .line 2
    sget v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->d:F

    return v0
.end method

.method public static j()F
    .locals 2

    .line 1
    sget v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->c:F

    const/high16 v1, 0x40c00000    # 6.0f

    mul-float v0, v0, v1

    const/high16 v1, 0x40400000    # 3.0f

    add-float/2addr v0, v1

    .line 2
    sget v1, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->d:F

    mul-float v0, v0, v1

    return v0
.end method

.method public static k()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->h:Z

    return v0
.end method

.method public static l(Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;",
            ")",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->i:Lcn/mucang/android/jiakaoyi/signal/gearsensor/i;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p0}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/i;->f(Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static m()F
    .locals 2

    const-string v0, "key_gear_percent_width"

    const/high16 v1, 0x3f000000    # 0.5f

    .line 1
    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->c(Ljava/lang/String;F)F

    move-result v0

    sput v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->b:F

    .line 2
    sget v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->b:F

    return v0
.end method

.method public static n()F
    .locals 1

    .line 1
    sget v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->b:F

    return v0
.end method

.method public static o()F
    .locals 2

    .line 1
    sget v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->c:F

    const/high16 v1, 0x40c00000    # 6.0f

    mul-float v0, v0, v1

    const/high16 v1, 0x40400000    # 3.0f

    add-float/2addr v0, v1

    .line 2
    sget v1, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->b:F

    mul-float v0, v0, v1

    return v0
.end method

.method public static p()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->g:Z

    return v0
.end method

.method public static q()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->e:Z

    return v0
.end method

.method public static r()F
    .locals 2

    const-string v0, "key_value_percent"

    const/high16 v1, 0x3f000000    # 0.5f

    .line 1
    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->c(Ljava/lang/String;F)F

    move-result v0

    sput v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->c:F

    .line 2
    sget v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->c:F

    return v0
.end method

.method public static s()Z
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->i:Lcn/mucang/android/jiakaoyi/signal/gearsensor/i;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/i;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static declared-synchronized t()V
    .locals 3

    const-class v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-boolean v1, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->j:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 2
    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 3
    :try_start_1
    sput-boolean v1, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->j:Z

    .line 4
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->m()F

    .line 5
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->i()F

    .line 6
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->r()F

    const-string v2, "key_judge_with_line"

    .line 7
    invoke-static {v2, v1}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->b(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->h:Z

    .line 8
    sput-boolean v1, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->h:Z

    const-string v1, "key_judge_gear_when_clutch"

    const/4 v2, 0x0

    .line 9
    invoke-static {v1, v2}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->b(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->a:Z

    const-string v1, "key_trim_with_rpm"

    .line 10
    invoke-static {v1, v2}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->b(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->g:Z

    const-string v1, "key_trust_obd_back_gear"

    .line 11
    invoke-static {v1, v2}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->b(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->e:Z

    const-string v1, "key_trust_ext_gear"

    .line 12
    invoke-static {v1, v2}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->b(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->f:Z

    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u662f\u5426\u7528\u4f20\u52a8\u6bd4\u6765\u4fee\u6b63\u6863\u4f4d:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->g:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u8e29\u79bb\u5408\u65f6\u662f\u5426\u8ba1\u7b97\u6863\u4f4d:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->a:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u8bbe\u7f6e\u662f\u5426\u7528\u5fc5\u7ecf\u7ebf\u6765\u8ba1\u7b97\u6863\u4f4d:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->h:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u662f\u5426\u4fe1\u4efbobd\u5012\u6863:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->e:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u662f\u5426\u4fe1\u4efb\u6269\u5c55\u6863\u4f4d:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->f:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 18
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u662f\u5426\u533a\u57df\u6cd5\u5224\u65ad\u6863\u4f4d:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->k:Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->b()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u533a\u57df\u6cd5\u662f\u5426\u53ea\u8ba1\u7b97\u4e00\u6b21:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->n:Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->b()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u533a\u57df\u6cd5\u662f\u5426\u7acb\u523b\u8ba1\u7b97\u6863\u4f4d:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->m:Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->b()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u4e0d\u8e29\u79bb\u5408\u65f6\u4e0d\u8ba1\u7b97\u6863\u4f4d:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->o:Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->b()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 22
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->f()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static u()Z
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->k:Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static v()Z
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->i:Lcn/mucang/android/jiakaoyi/signal/gearsensor/i;

    instance-of v0, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/a;

    return v0
.end method

.method public static w()Z
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->n:Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static x()Z
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->i:Lcn/mucang/android/jiakaoyi/signal/gearsensor/i;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/i;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static y()Z
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->m:Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static z()Z
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/h;->i:Lcn/mucang/android/jiakaoyi/signal/gearsensor/i;

    instance-of v0, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/l/c;

    return v0
.end method
