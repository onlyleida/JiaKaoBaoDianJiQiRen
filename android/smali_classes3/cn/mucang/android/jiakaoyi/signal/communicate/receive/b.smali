.class public Lcn/mucang/android/jiakaoyi/signal/communicate/receive/b;
.super Lcn/mucang/android/jiakaoyi/signal/communicate/receive/m;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I


# direct methods
.method public constructor <init>(ILcn/mucang/android/jiakaoyi/signal/communicate/r;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/m;-><init>(ILcn/mucang/android/jiakaoyi/signal/communicate/r;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/b;->b:I

    .line 3
    iput p1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/b;->c:I

    .line 4
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->e()B

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 5
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->e()B

    move-result p1

    iput p1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/b;->b:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 6
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/r;->e()B

    move-result p1

    iput p1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/b;->c:I

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/b;->b:I

    if-eqz v0, :cond_b

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2
    sget v0, Lcn/mucang/android/jiakaoyi/signal/R$string;->signal_p0_problem:I

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 3
    sget v0, Lcn/mucang/android/jiakaoyi/signal/R$string;->signal_obstacle_braking:I

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 4
    sget v0, Lcn/mucang/android/jiakaoyi/signal/R$string;->signal_non_obstacle_braking:I

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    .line 5
    sget v0, Lcn/mucang/android/jiakaoyi/signal/R$string;->signal_hand_brake_up:I

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_4
    const/4 v1, 0x6

    if-ne v0, v1, :cond_5

    .line 6
    sget v0, Lcn/mucang/android/jiakaoyi/signal/R$string;->signal_flameout:I

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_5
    const/4 v1, 0x7

    if-ne v0, v1, :cond_6

    .line 7
    sget v0, Lcn/mucang/android/jiakaoyi/signal/R$string;->signal_open_sefe_belt:I

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_6
    const/16 v1, 0x8

    if-ne v0, v1, :cond_7

    .line 8
    sget v0, Lcn/mucang/android/jiakaoyi/signal/R$string;->signal_open_door:I

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_7
    const/16 v1, 0x9

    if-ne v0, v1, :cond_8

    .line 9
    sget v0, Lcn/mucang/android/jiakaoyi/signal/R$string;->signal_gear_error:I

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_8
    const/16 v1, 0xa

    if-ne v0, v1, :cond_9

    .line 10
    sget v0, Lcn/mucang/android/jiakaoyi/signal/R$string;->signal_gear_n_handbrake:I

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_9
    const/16 v1, 0xb

    if-ne v0, v1, :cond_a

    .line 11
    sget v0, Lcn/mucang/android/jiakaoyi/signal/R$string;->signal_gps_error:I

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_a
    const-string v0, "\u672a\u77e5\u7406\u7531"

    return-object v0

    :cond_b
    :goto_0
    const-string v0, ""

    return-object v0
.end method
