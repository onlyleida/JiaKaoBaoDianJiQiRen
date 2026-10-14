.class public final synthetic Lcn/mucang/android/jiakaoyi/mapcollect/migrate/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/mapcollect/migrate/K2MigrateActivity;

.field public final synthetic b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/mapcollect/migrate/K2MigrateActivity;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/migrate/b;->a:Lcn/mucang/android/jiakaoyi/mapcollect/migrate/K2MigrateActivity;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/migrate/b;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/migrate/b;->a:Lcn/mucang/android/jiakaoyi/mapcollect/migrate/K2MigrateActivity;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/migrate/b;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/mapcollect/migrate/K2MigrateActivity;->x(Lcn/mucang/android/jiakaoyi/mapcollect/migrate/K2MigrateActivity;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    return-void
.end method
