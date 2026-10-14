package cn.mucang.sundial.library.fragment;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.lifecycle.a0;
import androidx.lifecycle.i0;
import androidx.recyclerview.widget.RecyclerView;
import cn.mucang.sundial.android.log.SundialLog;
import cn.mucang.sundial.library.binder.PhotoRecordBinder;
import cn.mucang.sundial.library.databinding.TtFragmentPhotoRecordBinding;
import cn.mucang.sundial.library.entity.PhotoEntity;
import cn.mucang.sundial.library.entity.PhotoRecordInfo;
import cn.mucang.sundial.library.viewmodel.PhotoRecordFragmentViewModel;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import me.drakeet.multitype.Items;
import me.drakeet.multitype.d;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b!\u0010\u0004J\u000f\u0010\u0003\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u0003\u0010\u0004J\u0017\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0007\u0010\bJ\u0019\u0010\u000b\u001a\u00020\u00022\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0016¢\u0006\u0004\b\u000b\u0010\fJ+\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u000e\u001a\u00020\r2\b\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0016¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0014\u0010\u0004R\u0016\u0010\u0016\u001a\u00020\u00158\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017R\u0016\u0010\u0019\u001a\u00020\u00188\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0019\u0010\u001aR\u0016\u0010\u001c\u001a\u00020\u001b8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u001c\u0010\u001dR\u0018\u0010\u001f\u001a\u0004\u0018\u00010\u001e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001f\u0010 ¨\u0006\""}, d2 = {"Lcn/mucang/sundial/library/fragment/PhotoRecordFragment;", "Lcn/mucang/sundial/library/fragment/BaseFragment;", "Lkotlin/v;", "initViewModel", "()V", "Lcn/mucang/sundial/library/entity/PhotoRecordInfo;", "photoRecordInfo", "updateUI", "(Lcn/mucang/sundial/library/entity/PhotoRecordInfo;)V", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", TtmlNode.RUBY_CONTAINER, "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", "onResume", "Lme/drakeet/multitype/Items;", "items", "Lme/drakeet/multitype/Items;", "Lme/drakeet/multitype/d;", "adapter", "Lme/drakeet/multitype/d;", "Lcn/mucang/sundial/library/databinding/TtFragmentPhotoRecordBinding;", "viewBinding", "Lcn/mucang/sundial/library/databinding/TtFragmentPhotoRecordBinding;", "Lcn/mucang/sundial/library/viewmodel/PhotoRecordFragmentViewModel;", "viewModel", "Lcn/mucang/sundial/library/viewmodel/PhotoRecordFragmentViewModel;", "<init>", "library_release"}, k = 1, mv = {1, 1, 15})
public final class PhotoRecordFragment extends BaseFragment {
    private final d adapter;
    private final Items items;
    private TtFragmentPhotoRecordBinding viewBinding;
    private PhotoRecordFragmentViewModel viewModel;

    public PhotoRecordFragment() {
        Items items = new Items();
        this.items = items;
        this.adapter = new d(items);
    }

    private final void initViewModel() {
        i0<PhotoRecordInfo> photoRecordData;
        if (getActivity() != null) {
            PhotoRecordFragmentViewModel photoRecordFragmentViewModel = (PhotoRecordFragmentViewModel) vm(this, PhotoRecordFragmentViewModel.class);
            this.viewModel = photoRecordFragmentViewModel;
            if (photoRecordFragmentViewModel == null || (photoRecordData = photoRecordFragmentViewModel.getPhotoRecordData()) == null) {
                return;
            }
            photoRecordData.q(this, new a0<PhotoRecordInfo>() { // from class: cn.mucang.sundial.library.fragment.PhotoRecordFragment$initViewModel$$inlined$run$lambda$1
                @Override // androidx.lifecycle.a0
                public final void onChanged(PhotoRecordInfo photoRecordInfo) {
                    if (photoRecordInfo != null) {
                        this.this$0.updateUI(photoRecordInfo);
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void updateUI(PhotoRecordInfo photoRecordInfo) {
        TtFragmentPhotoRecordBinding ttFragmentPhotoRecordBinding = this.viewBinding;
        if (ttFragmentPhotoRecordBinding == null) {
            r.u("viewBinding");
            throw null;
        }
        this.adapter.f(PhotoEntity.class, new PhotoRecordBinder());
        RecyclerView recyclerView = ttFragmentPhotoRecordBinding.recyclerView;
        r.d(recyclerView, "recyclerView");
        recyclerView.setAdapter(this.adapter);
        if (photoRecordInfo.getInfoList() != null) {
            List<PhotoEntity> infoList = photoRecordInfo.getInfoList();
            r.c(infoList);
            if (!infoList.isEmpty()) {
                d dVar = this.adapter;
                List<PhotoEntity> infoList2 = photoRecordInfo.getInfoList();
                r.c(infoList2);
                dVar.h(infoList2);
            }
        }
        this.adapter.notifyDataSetChanged();
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        initViewModel();
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        r.e(inflater, "inflater");
        TtFragmentPhotoRecordBinding ttFragmentPhotoRecordBindingInflate = TtFragmentPhotoRecordBinding.inflate(inflater);
        r.d(ttFragmentPhotoRecordBindingInflate, "TtFragmentPhotoRecordBinding.inflate(inflater)");
        this.viewBinding = ttFragmentPhotoRecordBindingInflate;
        if (ttFragmentPhotoRecordBindingInflate == null) {
            r.u("viewBinding");
            throw null;
        }
        LinearLayout root = ttFragmentPhotoRecordBindingInflate.getRoot();
        r.d(root, "viewBinding.root");
        return root;
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        PhotoRecordFragmentViewModel photoRecordFragmentViewModel = this.viewModel;
        if (photoRecordFragmentViewModel != null) {
            photoRecordFragmentViewModel.getPhotoRecords();
        }
        SundialLog.normal("显示抓拍记录");
    }
}
