.class public final synthetic Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/v0;

.field public final synthetic b:Lcn/mucang/android/jiakaoyi/signal/c/e;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/v0;Lcn/mucang/android/jiakaoyi/signal/c/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/t;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/v0;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/t;->b:Lcn/mucang/android/jiakaoyi/signal/c/e;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/t;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/v0;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/t;->b:Lcn/mucang/android/jiakaoyi/signal/c/e;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/v0;->e(Lcn/mucang/android/jiakaoyi/signal/c/e;)V

    return-void
.end method
