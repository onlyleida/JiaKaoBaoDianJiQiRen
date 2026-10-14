.class public final synthetic Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

.field public final synthetic b:Ljava/lang/Boolean;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/g;->a:Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/g;->b:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/g;->a:Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/g;->b:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoDriveMgr$startAutoDrive$1;->b(Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;Ljava/lang/Boolean;)V

    return-void
.end method
