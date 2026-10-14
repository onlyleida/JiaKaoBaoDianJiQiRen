.class public final synthetic Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2$a;

.field public final synthetic b:Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2$a;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f;->a:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2$a;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f;->b:Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f;->a:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2$a;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f;->b:Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    invoke-virtual {v0, v1, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2$a;->c(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Landroid/content/DialogInterface;I)V

    return-void
.end method
