.class public final synthetic Lcn/mucang/android/jiakaoyi/teachingk2/config/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/config/c;->a:Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/config/c;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/config/c;->a:Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/config/c;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfigManager;->m(Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;Ljava/lang/String;)V

    return-void
.end method
