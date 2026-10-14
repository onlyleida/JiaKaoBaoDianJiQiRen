.class public final synthetic Lcn/mucang/android/jiakaoyi/mapcollect/migrate/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/mapcollect/render/f;

.field public final synthetic b:Lcn/mucang/android/jiakaoyi/mapcollect/migrate/K2MigrateActivity;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/mapcollect/render/f;Lcn/mucang/android/jiakaoyi/mapcollect/migrate/K2MigrateActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/migrate/c;->a:Lcn/mucang/android/jiakaoyi/mapcollect/render/f;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/migrate/c;->b:Lcn/mucang/android/jiakaoyi/mapcollect/migrate/K2MigrateActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/migrate/c;->a:Lcn/mucang/android/jiakaoyi/mapcollect/render/f;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/migrate/c;->b:Lcn/mucang/android/jiakaoyi/mapcollect/migrate/K2MigrateActivity;

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/mapcollect/migrate/K2MigrateActivity;->y(Lcn/mucang/android/jiakaoyi/mapcollect/render/f;Lcn/mucang/android/jiakaoyi/mapcollect/migrate/K2MigrateActivity;)V

    return-void
.end method
