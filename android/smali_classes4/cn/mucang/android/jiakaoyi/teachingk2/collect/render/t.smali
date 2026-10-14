.class public final synthetic Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;

.field public final synthetic b:Ljava/lang/StringBuilder;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;Ljava/lang/StringBuilder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/t;->a:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/t;->b:Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/t;->a:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/t;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/b2;->D(Ljava/lang/StringBuilder;Landroid/content/DialogInterface;I)V

    return-void
.end method
