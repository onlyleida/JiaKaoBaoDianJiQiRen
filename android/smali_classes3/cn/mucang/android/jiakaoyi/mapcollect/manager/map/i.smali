.class public final synthetic Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/ExamModeSettingActivity;

.field public final synthetic b:Lcn/mucang/android/jiakaoyi/mapcollect/render/f;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/ExamModeSettingActivity;Lcn/mucang/android/jiakaoyi/mapcollect/render/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/i;->a:Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/ExamModeSettingActivity;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/i;->b:Lcn/mucang/android/jiakaoyi/mapcollect/render/f;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/i;->a:Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/ExamModeSettingActivity;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/i;->b:Lcn/mucang/android/jiakaoyi/mapcollect/render/f;

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/ExamModeSettingActivity;->w(Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/ExamModeSettingActivity;Lcn/mucang/android/jiakaoyi/mapcollect/render/f;)V

    return-void
.end method
