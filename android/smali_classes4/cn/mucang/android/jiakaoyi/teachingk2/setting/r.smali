.class public final synthetic Lcn/mucang/android/jiakaoyi/teachingk2/setting/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/framework/h/b;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/teachingk2/setting/AutoTeachDebugActivity;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/setting/AutoTeachDebugActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/setting/r;->a:Lcn/mucang/android/jiakaoyi/teachingk2/setting/AutoTeachDebugActivity;

    return-void
.end method


# virtual methods
.method public final callback(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/setting/r;->a:Lcn/mucang/android/jiakaoyi/teachingk2/setting/AutoTeachDebugActivity;

    check-cast p1, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e$b;

    invoke-static {v0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/AutoTeachDebugActivity;->f0(Lcn/mucang/android/jiakaoyi/teachingk2/setting/AutoTeachDebugActivity;Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e$b;)V

    return-void
.end method
