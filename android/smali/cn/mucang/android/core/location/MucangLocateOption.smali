.class public Lcn/mucang/android/core/location/MucangLocateOption;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/core/location/MucangLocateOption$LocateMode;
    }
.end annotation


# instance fields
.field private a:J

.field private b:J

.field private c:Z

.field private d:Lcn/mucang/android/core/location/MucangLocateOption$LocateMode;

.field protected e:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0x1d4c0

    .line 2
    iput-wide v0, p0, Lcn/mucang/android/core/location/MucangLocateOption;->a:J

    const-wide/16 v0, 0x2710

    .line 3
    iput-wide v0, p0, Lcn/mucang/android/core/location/MucangLocateOption;->b:J

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcn/mucang/android/core/location/MucangLocateOption;->c:Z

    .line 5
    sget-object v0, Lcn/mucang/android/core/location/MucangLocateOption$LocateMode;->FINE_LOCATION_ONLY:Lcn/mucang/android/core/location/MucangLocateOption$LocateMode;

    iput-object v0, p0, Lcn/mucang/android/core/location/MucangLocateOption;->d:Lcn/mucang/android/core/location/MucangLocateOption$LocateMode;

    const/4 v0, 0x5

    .line 6
    iput v0, p0, Lcn/mucang/android/core/location/MucangLocateOption;->e:I

    return-void
.end method


# virtual methods
.method public a(Lcn/mucang/android/core/location/MucangLocateOption$LocateMode;)Lcn/mucang/android/core/location/MucangLocateOption;
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/core/location/MucangLocateOption;->d:Lcn/mucang/android/core/location/MucangLocateOption$LocateMode;

    return-object p0
.end method

.method public b()Lcn/mucang/android/core/location/MucangLocateOption$LocateMode;
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/location/MucangLocateOption;->d:Lcn/mucang/android/core/location/MucangLocateOption$LocateMode;

    sget-object v1, Lcn/mucang/android/core/location/MucangLocateOption$LocateMode;->FINE_LOCATION_FIRST:Lcn/mucang/android/core/location/MucangLocateOption$LocateMode;

    if-eq v0, v1, :cond_0

    return-object v0

    :cond_0
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    .line 2
    invoke-static {v0}, Lcn/mucang/android/core/utils/z;->a(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "MucangLocateOption"

    if-eqz v0, :cond_1

    const-string v0, "FINE_LOCATION_FIRST => FINE_LOCATION"

    .line 3
    invoke-static {v1, v0}, Lcn/mucang/android/core/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    sget-object v0, Lcn/mucang/android/core/location/MucangLocateOption$LocateMode;->FINE_LOCATION_ONLY:Lcn/mucang/android/core/location/MucangLocateOption$LocateMode;

    return-object v0

    :cond_1
    const-string v0, "FINE_LOCATION_FIRST => COARSE_LOCATION"

    .line 5
    invoke-static {v1, v0}, Lcn/mucang/android/core/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    sget-object v0, Lcn/mucang/android/core/location/MucangLocateOption$LocateMode;->COARSE_LOCATION_ONLY:Lcn/mucang/android/core/location/MucangLocateOption$LocateMode;

    return-object v0
.end method

.method public c()J
    .locals 6

    .line 1
    iget-wide v0, p0, Lcn/mucang/android/core/location/MucangLocateOption;->b:J

    const-string v2, "\u7b49\u5f85\u65f6\u957f\u5fc5\u987b\u57280-120\u79d2\u4e4b\u95f4"

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-ltz v5, :cond_2

    const-wide/32 v3, 0x1d4c0

    cmp-long v5, v0, v3

    if-lez v5, :cond_1

    .line 2
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->v()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "MucangLocateOption"

    const-string v1, "\u7b49\u5f85\u65f6\u957f\u5fc5\u987b\u57280-120\u79d2\u4e4b\u95f4,\u5f53\u524d\u7b49\u5f85\u65f6\u957f\uff1a120000"

    .line 3
    invoke-static {v0, v1}, Lcn/mucang/android/core/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v3

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-wide v0

    .line 5
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public d()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/mucang/android/core/location/MucangLocateOption;->a:J

    return-wide v0
.end method

.method public e()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/android/core/location/MucangLocateOption;->e:I

    return v0
.end method

.method public f()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/core/location/MucangLocateOption;->c:Z

    return v0
.end method

.method public g(J)Lcn/mucang/android/core/location/MucangLocateOption;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcn/mucang/android/core/location/MucangLocateOption;->b:J

    return-object p0
.end method

.method public h(Z)Lcn/mucang/android/core/location/MucangLocateOption;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/android/core/location/MucangLocateOption;->c:Z

    return-object p0
.end method
