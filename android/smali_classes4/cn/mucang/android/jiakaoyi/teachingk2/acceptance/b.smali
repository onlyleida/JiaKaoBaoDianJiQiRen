.class public final synthetic Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/util/List;

.field public final synthetic b:Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceChildActivity;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceChildActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/b;->a:Ljava/util/List;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/b;->b:Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceChildActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/b;->a:Ljava/util/List;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/b;->b:Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceChildActivity;

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceChildActivity;->r(Ljava/util/List;Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceChildActivity;)V

    return-void
.end method
