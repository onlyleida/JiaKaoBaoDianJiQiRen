.class public final synthetic Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e$b;

.field public final synthetic b:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e$b;Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/r;->a:Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e$b;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/r;->b:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/r;->a:Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e$b;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/r;->b:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;->I(Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e$b;Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;)V

    return-void
.end method
