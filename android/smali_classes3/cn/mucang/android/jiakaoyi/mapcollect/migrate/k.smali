.class public final synthetic Lcn/mucang/android/jiakaoyi/mapcollect/migrate/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/mapcollect/migrate/K2MigrateActivity;

.field public final synthetic b:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

.field public final synthetic c:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/mapcollect/migrate/K2MigrateActivity;Lcn/mucang/android/jiakaoyi/signal/pos/Gps;Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/migrate/k;->a:Lcn/mucang/android/jiakaoyi/mapcollect/migrate/K2MigrateActivity;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/migrate/k;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/mapcollect/migrate/k;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/migrate/k;->a:Lcn/mucang/android/jiakaoyi/mapcollect/migrate/K2MigrateActivity;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/migrate/k;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/migrate/k;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-static {v0, v1, v2, p1, p2}, Lcn/mucang/android/jiakaoyi/mapcollect/migrate/K2MigrateActivity;->G(Lcn/mucang/android/jiakaoyi/mapcollect/migrate/K2MigrateActivity;Lcn/mucang/android/jiakaoyi/signal/pos/Gps;Lcn/mucang/android/jiakaoyi/signal/pos/Gps;Landroid/content/DialogInterface;I)V

    return-void
.end method
