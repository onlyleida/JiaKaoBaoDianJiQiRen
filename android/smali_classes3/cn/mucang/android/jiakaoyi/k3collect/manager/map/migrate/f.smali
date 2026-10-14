.class public final synthetic Lcn/mucang/android/jiakaoyi/k3collect/manager/map/migrate/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/app/ProgressDialog;

.field public final synthetic b:Lcn/mucang/android/jiakaoyi/k3collect/manager/map/migrate/K3MigrateActivity;


# direct methods
.method public synthetic constructor <init>(Landroid/app/ProgressDialog;Lcn/mucang/android/jiakaoyi/k3collect/manager/map/migrate/K3MigrateActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/migrate/f;->a:Landroid/app/ProgressDialog;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/migrate/f;->b:Lcn/mucang/android/jiakaoyi/k3collect/manager/map/migrate/K3MigrateActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/migrate/f;->a:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/migrate/f;->b:Lcn/mucang/android/jiakaoyi/k3collect/manager/map/migrate/K3MigrateActivity;

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/migrate/K3MigrateActivity;->A(Landroid/app/ProgressDialog;Lcn/mucang/android/jiakaoyi/k3collect/manager/map/migrate/K3MigrateActivity;)V

    return-void
.end method
