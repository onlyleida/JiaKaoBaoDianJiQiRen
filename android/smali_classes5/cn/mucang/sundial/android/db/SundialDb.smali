.class public Lcn/mucang/sundial/android/db/SundialDb;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DB_VERSION:I = 0x5

.field private static sInstance:Lcn/mucang/sundial/android/db/SundialDb;


# instance fields
.field private final db:Lcn/mucang/android/core/db/a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcn/mucang/android/core/db/b;

    invoke-direct {v0}, Lcn/mucang/android/core/db/b;-><init>()V

    const-string v1, "sundial.db"

    invoke-virtual {v0, v1}, Lcn/mucang/android/core/db/b;->d(Ljava/lang/String;)Lcn/mucang/android/core/db/b;

    const-string v1, "sql/sundial.sql"

    .line 3
    invoke-virtual {v0, v1}, Lcn/mucang/android/core/db/b;->c(Ljava/lang/String;)Lcn/mucang/android/core/db/b;

    new-instance v1, Lcn/mucang/android/core/db/c;

    const-string v2, "sql/sundial_update_"

    invoke-direct {v1, v2}, Lcn/mucang/android/core/db/c;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, v1}, Lcn/mucang/android/core/db/b;->b(Lcn/mucang/android/core/db/a$b;)Lcn/mucang/android/core/db/b;

    const/4 v1, 0x5

    .line 5
    invoke-virtual {v0, v1}, Lcn/mucang/android/core/db/b;->e(I)Lcn/mucang/android/core/db/b;

    .line 6
    invoke-virtual {v0}, Lcn/mucang/android/core/db/b;->a()Lcn/mucang/android/core/db/a;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/sundial/android/db/SundialDb;->db:Lcn/mucang/android/core/db/a;

    .line 7
    const-class v1, Lcn/mucang/sundial/android/db/entity/DeviceInfo;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "select * from t_device_info"

    invoke-static {v4, v3}, Lcn/mucang/android/core/db/e;->d(Ljava/lang/String;[Ljava/lang/String;)Lcn/mucang/android/core/db/e;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcn/mucang/android/core/db/a;->n(Ljava/lang/Class;Lcn/mucang/android/core/db/e;)Lcn/mucang/android/core/db/IdEntity;

    move-result-object v1

    check-cast v1, Lcn/mucang/sundial/android/db/entity/DeviceInfo;

    .line 8
    invoke-static {}, Lcn/mucang/sundial/android/tcp/utils/DeviceUtils;->getImei()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_1

    .line 9
    new-instance v1, Lcn/mucang/sundial/android/db/entity/DeviceInfo;

    invoke-direct {v1}, Lcn/mucang/sundial/android/db/entity/DeviceInfo;-><init>()V

    const-string v4, "\u6728\u4ed3"

    .line 10
    invoke-virtual {v1, v4}, Lcn/mucang/sundial/android/db/entity/DeviceInfo;->setManufacturer(Ljava/lang/String;)V

    const-string v4, "Y321"

    .line 11
    invoke-virtual {v1, v4}, Lcn/mucang/sundial/android/db/entity/DeviceInfo;->setDeviceModel(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v1, v3}, Lcn/mucang/sundial/android/db/entity/DeviceInfo;->setImei(Ljava/lang/String;)V

    const-string v4, ""

    .line 13
    invoke-virtual {v1, v4}, Lcn/mucang/sundial/android/db/entity/DeviceInfo;->setCarNo(Ljava/lang/String;)V

    const-string v5, "P777"

    .line 14
    invoke-virtual {v1, v5}, Lcn/mucang/sundial/android/db/entity/DeviceInfo;->setSerialNo(Ljava/lang/String;)V

    .line 15
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v5

    const-string v6, "phone"

    invoke-virtual {v5, v6}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    .line 16
    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v5

    .line 17
    invoke-static {v5}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_0

    :cond_0
    move-object v4, v5

    .line 18
    :goto_0
    invoke-virtual {v1, v4}, Lcn/mucang/sundial/android/db/entity/DeviceInfo;->setDevicePhone(Ljava/lang/String;)V

    .line 19
    invoke-virtual {v0, v1}, Lcn/mucang/android/core/db/a;->u(Lcn/mucang/android/core/db/IdEntity;)V

    .line 20
    :cond_1
    invoke-static {v3}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 21
    invoke-virtual {v1, v3}, Lcn/mucang/sundial/android/db/entity/DeviceInfo;->setImei(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v0, v1}, Lcn/mucang/android/core/db/a;->E(Lcn/mucang/android/core/db/IdEntity;)V

    goto :goto_1

    .line 23
    :cond_2
    sget-object v3, Lcn/mucang/sundial/android/db/a;->a:Lcn/mucang/sundial/android/db/a;

    const-wide/16 v4, 0x64

    invoke-static {v3, v4, v5}, Lcn/mucang/android/core/utils/u;->d(Ljava/lang/Runnable;J)V

    .line 24
    :goto_1
    const-class v3, Lcn/mucang/sundial/android/db/entity/DeviceParameter;

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "select * from t_device_parameter"

    .line 25
    invoke-static {v4, v2}, Lcn/mucang/android/core/db/e;->d(Ljava/lang/String;[Ljava/lang/String;)Lcn/mucang/android/core/db/e;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcn/mucang/android/core/db/a;->y(Ljava/lang/Class;Lcn/mucang/android/core/db/e;)Ljava/util/List;

    move-result-object v0

    .line 26
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 27
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/sundial/android/db/entity/DeviceParameter;

    .line 28
    invoke-virtual {v3}, Lcn/mucang/sundial/android/db/entity/DeviceParameter;->getParameterId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 29
    :cond_3
    invoke-direct {p0, v1}, Lcn/mucang/sundial/android/db/SundialDb;->getDefaultParams(Lcn/mucang/sundial/android/db/entity/DeviceInfo;)Ljava/util/List;

    move-result-object v0

    .line 30
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 31
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/mucang/sundial/android/db/entity/DeviceParameter;

    .line 32
    invoke-virtual {v4}, Lcn/mucang/sundial/android/db/entity/DeviceParameter;->getParameterId()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 33
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 34
    :cond_5
    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 35
    iget-object v1, p0, Lcn/mucang/sundial/android/db/SundialDb;->db:Lcn/mucang/android/core/db/a;

    invoke-virtual {v1, v0}, Lcn/mucang/android/core/db/a;->v(Ljava/util/List;)V

    return-void
.end method

.method static synthetic a()V
    .locals 3

    .line 1
    invoke-static {}, Lcn/mucang/sundial/android/tcp/data/DataManager;->getInstance()Lcn/mucang/sundial/android/tcp/data/DataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/sundial/android/tcp/data/DataManager;->getDeviceInfo()Lcn/mucang/sundial/android/db/entity/DeviceInfo;

    move-result-object v0

    .line 2
    invoke-static {}, Lcn/mucang/sundial/android/tcp/utils/DeviceUtils;->getImei()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcn/mucang/sundial/android/db/entity/DeviceInfo;->getImei()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v0, v1}, Lcn/mucang/sundial/android/db/entity/DeviceInfo;->setImei(Ljava/lang/String;)V

    .line 5
    invoke-static {}, Lcn/mucang/sundial/android/tcp/data/DataManager;->getInstance()Lcn/mucang/sundial/android/tcp/data/DataManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/mucang/sundial/android/tcp/data/DataManager;->updateDeviceInfo(Lcn/mucang/sundial/android/db/entity/DeviceInfo;)V

    :cond_0
    return-void
.end method

.method private getDefaultParams(Lcn/mucang/sundial/android/db/entity/DeviceInfo;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/sundial/android/db/entity/DeviceInfo;",
            ")",
            "Ljava/util/List<",
            "Lcn/mucang/sundial/android/db/entity/DeviceParameter;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/util/ArrayList;

    const/16 v0, 0x40

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const-wide/16 v0, 0x1

    const-string v2, "30"

    .line 2
    invoke-static {v0, v1, v2}, Lcn/mucang/sundial/android/tcp/message/Parameter;->create(JLjava/lang/String;)Lcn/mucang/sundial/android/tcp/message/Parameter;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/sundial/android/db/entity/DeviceParameter;->from(Lcn/mucang/sundial/android/tcp/message/Parameter;)Lcn/mucang/sundial/android/db/entity/DeviceParameter;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-wide/16 v0, 0x2

    const-string v3, "20"

    .line 3
    invoke-static {v0, v1, v3}, Lcn/mucang/sundial/android/tcp/message/Parameter;->create(JLjava/lang/String;)Lcn/mucang/sundial/android/tcp/message/Parameter;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/sundial/android/db/entity/DeviceParameter;->from(Lcn/mucang/sundial/android/tcp/message/Parameter;)Lcn/mucang/sundial/android/db/entity/DeviceParameter;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-wide/16 v0, 0x3

    const-string v3, "2"

    .line 4
    invoke-static {v0, v1, v3}, Lcn/mucang/sundial/android/tcp/message/Parameter;->create(JLjava/lang/String;)Lcn/mucang/sundial/android/tcp/message/Parameter;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/sundial/android/db/entity/DeviceParameter;->from(Lcn/mucang/sundial/android/tcp/message/Parameter;)Lcn/mucang/sundial/android/db/entity/DeviceParameter;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-wide/16 v0, 0x20

    const-string v3, "0"

    .line 5
    invoke-static {v0, v1, v3}, Lcn/mucang/sundial/android/tcp/message/Parameter;->create(JLjava/lang/String;)Lcn/mucang/sundial/android/tcp/message/Parameter;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/sundial/android/db/entity/DeviceParameter;->from(Lcn/mucang/sundial/android/tcp/message/Parameter;)Lcn/mucang/sundial/android/db/entity/DeviceParameter;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-wide/16 v0, 0x29

    .line 6
    invoke-static {v0, v1, v2}, Lcn/mucang/sundial/android/tcp/message/Parameter;->create(JLjava/lang/String;)Lcn/mucang/sundial/android/tcp/message/Parameter;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/sundial/android/db/entity/DeviceParameter;->from(Lcn/mucang/sundial/android/tcp/message/Parameter;)Lcn/mucang/sundial/android/db/entity/DeviceParameter;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-wide/16 v0, 0x2c

    const-string v2, "100"

    .line 7
    invoke-static {v0, v1, v2}, Lcn/mucang/sundial/android/tcp/message/Parameter;->create(JLjava/lang/String;)Lcn/mucang/sundial/android/tcp/message/Parameter;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/sundial/android/db/entity/DeviceParameter;->from(Lcn/mucang/sundial/android/tcp/message/Parameter;)Lcn/mucang/sundial/android/db/entity/DeviceParameter;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public static getInstance()Lcn/mucang/sundial/android/db/SundialDb;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/sundial/android/db/SundialDb;->sInstance:Lcn/mucang/sundial/android/db/SundialDb;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcn/mucang/sundial/android/db/SundialDb;

    invoke-direct {v0}, Lcn/mucang/sundial/android/db/SundialDb;-><init>()V

    sput-object v0, Lcn/mucang/sundial/android/db/SundialDb;->sInstance:Lcn/mucang/sundial/android/db/SundialDb;

    .line 3
    :cond_0
    sget-object v0, Lcn/mucang/sundial/android/db/SundialDb;->sInstance:Lcn/mucang/sundial/android/db/SundialDb;

    return-object v0
.end method


# virtual methods
.method public getDb()Lcn/mucang/android/core/db/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/db/SundialDb;->db:Lcn/mucang/android/core/db/a;

    return-object v0
.end method
