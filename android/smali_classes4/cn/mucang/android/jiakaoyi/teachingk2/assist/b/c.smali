.class public final synthetic Lcn/mucang/android/jiakaoyi/teachingk2/assist/b/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcn/mucang/android/jiakaoyi/teachingk2/assist/b/m;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/teachingk2/assist/b/m;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/b/c;->a:Ljava/lang/String;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/b/c;->b:Lcn/mucang/android/jiakaoyi/teachingk2/assist/b/m;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/b/c;->a:Ljava/lang/String;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/b/c;->b:Lcn/mucang/android/jiakaoyi/teachingk2/assist/b/m;

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/b/m;->d(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/teachingk2/assist/b/m;)V

    return-void
.end method
