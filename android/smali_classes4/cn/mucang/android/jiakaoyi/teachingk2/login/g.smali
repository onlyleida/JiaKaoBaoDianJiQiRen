.class public final synthetic Lcn/mucang/android/jiakaoyi/teachingk2/login/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Z


# direct methods
.method public synthetic constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/g;->a:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/g;->a:Z

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/RobotLoginListener;->o(Z)V

    return-void
.end method
