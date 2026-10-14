.class public Lcn/mucang/sundial/android/tcp/utils/PreferenceUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final FILE_NAME:Ljava/lang/String; = "Sundial"

.field public static final KEY_CLEAR_RECORD_TIMESTAMP:Ljava/lang/String; = "clear_record_timestamp"

.field public static final KEY_COACH_TAKE_PHOTO:Ljava/lang/String; = "coach_take_photo"

.field public static final KEY_DISABLE_TRAINING_STATUS:Ljava/lang/String; = "disable_training_status"

.field public static final KEY_INIT_DEFAULT_PARAM:Ljava/lang/String; = "init_default_param"

.field public static final KEY_K2_LEARN_DATA_FACTOR:Ljava/lang/String; = "k2_learn_data_factor"

.field public static final KEY_K3_LEARN_DATA_FACTOR:Ljava/lang/String; = "k3_learn_data_factor"

.field public static final KEY_LAST_TIME_STAMP:Ljava/lang/String; = "app.last_timestamp"

.field public static final KEY_LEARN_DATA_FACTOR:Ljava/lang/String; = "learn_data_factor"

.field public static final KEY_LIVE_IMAGE_SECOND:Ljava/lang/String; = "live_image_second"

.field public static final KEY_LOCATION_DATA_STRATEGY:Ljava/lang/String; = "location_data_strategy"

.field public static final KEY_LOGIN_MODE:Ljava/lang/String; = "login_mode"

.field public static final KEY_LOGIN_OUT_SECOND:Ljava/lang/String; = "login_out_second"

.field public static final KEY_MAX_SPEED_LIMIT:Ljava/lang/String; = "max_speed_limit"

.field public static final KEY_MILEAGE_ACCURACY:Ljava/lang/String; = "mileage_accuracy"

.field public static final KEY_OBD_LOCATION_STRATEGY:Ljava/lang/String; = "obd_location_strategy"

.field public static final KEY_TAKE_PHOTO_DELAY:Ljava/lang/String; = "take_photo_delay"

.field public static final KEY_TAKE_PHOTO_VOICE:Ljava/lang/String; = "take_photo_voice"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 0

    .line 2
    invoke-static {p0, p1, p2}, Lcn/mucang/android/core/utils/j0;->g(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static getBoolean(Ljava/lang/String;Z)Z
    .locals 1

    const-string v0, "Sundial"

    .line 1
    invoke-static {v0, p0, p1}, Lcn/mucang/sundial/android/tcp/utils/PreferenceUtils;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static getFloat(Ljava/lang/String;F)F
    .locals 1

    const-string v0, "Sundial"

    .line 1
    invoke-static {v0, p0, p1}, Lcn/mucang/sundial/android/tcp/utils/PreferenceUtils;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result p0

    return p0
.end method

.method public static getFloat(Ljava/lang/String;Ljava/lang/String;F)F
    .locals 0

    .line 2
    invoke-static {p0, p1, p2}, Lcn/mucang/android/core/utils/j0;->c(Ljava/lang/String;Ljava/lang/String;F)F

    move-result p0

    return p0
.end method

.method public static getInt(Ljava/lang/String;I)I
    .locals 1

    const-string v0, "Sundial"

    .line 1
    invoke-static {v0, p0, p1}, Lcn/mucang/sundial/android/tcp/utils/PreferenceUtils;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getInt(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 0

    .line 2
    invoke-static {p0, p1, p2}, Lcn/mucang/android/core/utils/j0;->d(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getLong(Ljava/lang/String;J)J
    .locals 1

    const-string v0, "Sundial"

    .line 1
    invoke-static {v0, p0, p1, p2}, Lcn/mucang/sundial/android/tcp/utils/PreferenceUtils;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static getLong(Ljava/lang/String;Ljava/lang/String;J)J
    .locals 0

    .line 2
    invoke-static {p0, p1, p2, p3}, Lcn/mucang/android/core/utils/j0;->e(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "Sundial"

    .line 1
    invoke-static {v0, p0, p1}, Lcn/mucang/sundial/android/tcp/utils/PreferenceUtils;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 2
    invoke-static {p0, p1, p2}, Lcn/mucang/android/core/utils/j0;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static putBoolean(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 2
    invoke-static {p0, p1, p2}, Lcn/mucang/android/core/utils/j0;->l(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static putBoolean(Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "Sundial"

    .line 1
    invoke-static {v0, p0, p1}, Lcn/mucang/sundial/android/tcp/utils/PreferenceUtils;->putBoolean(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static putFloat(Ljava/lang/String;F)V
    .locals 1

    const-string v0, "Sundial"

    .line 1
    invoke-static {v0, p0, p1}, Lcn/mucang/sundial/android/tcp/utils/PreferenceUtils;->putFloat(Ljava/lang/String;Ljava/lang/String;F)V

    return-void
.end method

.method public static putFloat(Ljava/lang/String;Ljava/lang/String;F)V
    .locals 0

    .line 2
    invoke-static {p0, p1, p2}, Lcn/mucang/android/core/utils/j0;->h(Ljava/lang/String;Ljava/lang/String;F)V

    return-void
.end method

.method public static putInt(Ljava/lang/String;I)V
    .locals 1

    const-string v0, "Sundial"

    .line 1
    invoke-static {v0, p0, p1}, Lcn/mucang/sundial/android/tcp/utils/PreferenceUtils;->putInt(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static putInt(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 2
    invoke-static {p0, p1, p2}, Lcn/mucang/android/core/utils/j0;->i(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static putLong(Ljava/lang/String;J)V
    .locals 1

    const-string v0, "Sundial"

    .line 1
    invoke-static {v0, p0, p1, p2}, Lcn/mucang/sundial/android/tcp/utils/PreferenceUtils;->putLong(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public static putLong(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 2
    invoke-static {p0, p1, p2, p3}, Lcn/mucang/android/core/utils/j0;->j(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public static putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "Sundial"

    .line 1
    invoke-static {v0, p0, p1}, Lcn/mucang/sundial/android/tcp/utils/PreferenceUtils;->putString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static putString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-static {p0, p1, p2}, Lcn/mucang/android/core/utils/j0;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
