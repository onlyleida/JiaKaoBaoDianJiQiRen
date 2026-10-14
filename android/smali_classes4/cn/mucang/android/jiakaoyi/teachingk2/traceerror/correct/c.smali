.class public final synthetic Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/f/a;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/f/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/c;->a:Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/f/a;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/c;->a:Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/f/a;

    invoke-interface {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/f/a;->onFinish()V

    return-void
.end method
