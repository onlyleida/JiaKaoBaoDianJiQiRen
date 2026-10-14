.class public final synthetic Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/teachingk2/t0/b;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/t0/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/h;->a:Lcn/mucang/android/jiakaoyi/teachingk2/t0/b;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/h;->a:Lcn/mucang/android/jiakaoyi/teachingk2/t0/b;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;->y(Lcn/mucang/android/jiakaoyi/teachingk2/t0/b;)V

    return-void
.end method
