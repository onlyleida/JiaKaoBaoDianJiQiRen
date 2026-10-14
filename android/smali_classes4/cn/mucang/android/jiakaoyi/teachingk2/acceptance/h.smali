.class public final synthetic Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/app/ProgressDialog;

.field public final synthetic b:Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceModule;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/app/ProgressDialog;Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceModule;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/h;->a:Landroid/app/ProgressDialog;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/h;->b:Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceModule;

    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/h;->c:Ljava/lang/String;

    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/h;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/h;->a:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/h;->b:Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceModule;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/h;->c:Ljava/lang/String;

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/h;->d:Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/w;->p(Landroid/app/ProgressDialog;Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceModule;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
