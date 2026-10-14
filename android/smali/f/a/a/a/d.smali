.class public Lf/a/a/a/d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a()Z
    .locals 3

    .line 1
    invoke-static {}, Lf/a/a/a/d;->b()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "click_log_edit_mode_on"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static b()Landroid/content/SharedPreferences;
    .locals 1

    const-string v0, "_core_pref"

    .line 1
    invoke-static {v0}, Lcn/mucang/android/core/utils/j0;->b(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static c()J
    .locals 4

    .line 1
    invoke-static {}, Lf/a/a/a/d;->b()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "server_task_next_request_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static d()Z
    .locals 3

    const-string v0, "_core_pref"

    const-string v1, "key_auto_fill_user_data"

    const/4 v2, 0x1

    .line 1
    invoke-static {v0, v1, v2}, Lcn/mucang/android/core/utils/j0;->g(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static e()Z
    .locals 3

    .line 1
    invoke-static {}, Lf/a/a/a/d;->b()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "encode_base_params"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static f(Z)V
    .locals 2

    .line 1
    invoke-static {}, Lf/a/a/a/d;->b()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "click_log_edit_mode_on"

    .line 2
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 3
    invoke-static {v0}, Lcn/mucang/android/core/utils/j0;->m(Landroid/content/SharedPreferences$Editor;)V

    return-void
.end method

.method public static g(Z)V
    .locals 2

    .line 1
    invoke-static {}, Lf/a/a/a/d;->b()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "encode_base_params"

    .line 2
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 3
    invoke-static {v0}, Lcn/mucang/android/core/utils/j0;->m(Landroid/content/SharedPreferences$Editor;)V

    return-void
.end method

.method public static h(J)V
    .locals 2

    .line 1
    invoke-static {}, Lf/a/a/a/d;->b()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "server_task_next_request_time"

    invoke-interface {v0, v1, p0, p1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
