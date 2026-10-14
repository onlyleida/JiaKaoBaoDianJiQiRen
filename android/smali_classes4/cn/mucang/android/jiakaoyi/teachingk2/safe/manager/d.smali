.class public final synthetic Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/consts/LockCarType;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/safe/consts/LockCarType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/d;->a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/consts/LockCarType;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/d;->a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/consts/LockCarType;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/LockCarManager;->h(Lcn/mucang/android/jiakaoyi/teachingk2/safe/consts/LockCarType;)V

    return-void
.end method
