.class public final synthetic Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Landroidx/appcompat/app/d;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Landroidx/appcompat/app/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/i;->a:Ljava/lang/String;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/i;->b:Landroidx/appcompat/app/d;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/i;->a:Ljava/lang/String;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/i;->b:Landroidx/appcompat/app/d;

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/w;->q(Ljava/lang/String;Landroidx/appcompat/app/d;)V

    return-void
.end method
