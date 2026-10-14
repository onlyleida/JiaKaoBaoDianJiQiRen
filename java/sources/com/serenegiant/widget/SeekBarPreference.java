package com.serenegiant.widget;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.preference.Preference;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.SeekBar;
import android.widget.TextView;
import java.util.Locale;

/* JADX INFO: loaded from: classes6.dex */
public final class SeekBarPreference extends Preference {
    private static int sDefaultValue = 1;
    private final int mDefaultValue;
    private final String mFmtStr;
    private final int mLabelTvId;
    private final int mMaxValue;
    private final int mMinValue;
    private final SeekBar.OnSeekBarChangeListener mOnSeekBarChangeListener;
    private final float mScaleValue;
    private final int mSeekbarId;
    private final int mSeekbarLayoutId;
    private TextView mTextView;
    private int preferenceValue;

    public SeekBarPreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setValueLabel(int i, boolean z) {
        TextView textView = this.mTextView;
        if (textView != null) {
            textView.setText(formatValueLabel(i, z));
        }
    }

    protected String formatValueLabel(int i, boolean z) {
        try {
            return String.format(this.mFmtStr, Float.valueOf(i * this.mScaleValue));
        } catch (Exception unused) {
            return String.format(Locale.US, "%f", Float.valueOf(i * this.mScaleValue));
        }
    }

    @Override // android.preference.Preference
    protected void onBindView(View view) {
        View viewInflate;
        super.onBindView(view);
        if (this.mSeekbarLayoutId == 0 || this.mSeekbarId == 0) {
            return;
        }
        RelativeLayout relativeLayout = null;
        ViewGroup viewGroup = (ViewGroup) view;
        for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = viewGroup.getChildAt(childCount);
            if (childAt instanceof RelativeLayout) {
                relativeLayout = (RelativeLayout) childAt;
                break;
            }
        }
        if (relativeLayout == null || (viewInflate = LayoutInflater.from(getContext()).inflate(this.mSeekbarLayoutId, viewGroup, false)) == null) {
            return;
        }
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams.addRule(3, R.id.summary);
        relativeLayout.addView(viewInflate, layoutParams);
        SeekBar seekBar = (SeekBar) viewInflate.findViewById(this.mSeekbarId);
        if (seekBar != null) {
            seekBar.setMax(this.mMaxValue - this.mMinValue);
            int i = this.preferenceValue - this.mMinValue;
            seekBar.setProgress(i);
            seekBar.setSecondaryProgress(i);
            seekBar.setOnSeekBarChangeListener(this.mOnSeekBarChangeListener);
            seekBar.setEnabled(isEnabled());
        }
        TextView textView = (TextView) viewInflate.findViewById(com.serenegiant.common.R.id.seekbar_value_label);
        this.mTextView = textView;
        if (textView != null) {
            setValueLabel(this.preferenceValue, false);
            this.mTextView.setEnabled(isEnabled());
        }
    }

    @Override // android.preference.Preference
    protected Object onGetDefaultValue(TypedArray typedArray, int i) {
        return Integer.valueOf(typedArray.getInt(i, this.mDefaultValue));
    }

    @Override // android.preference.Preference
    protected void onSetInitialValue(boolean z, Object obj) {
        try {
            this.preferenceValue = ((Integer) obj).intValue();
        } catch (Exception unused) {
            this.preferenceValue = this.mDefaultValue;
        }
        if (z) {
            this.preferenceValue = getPersistedInt(this.preferenceValue);
        }
        persistInt(this.preferenceValue);
    }

    public SeekBarPreference(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mOnSeekBarChangeListener = new SeekBar.OnSeekBarChangeListener() { // from class: com.serenegiant.widget.SeekBarPreference.1
            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onProgressChanged(SeekBar seekBar, int i2, boolean z) {
                SeekBarPreference seekBarPreference = SeekBarPreference.this;
                seekBarPreference.setValueLabel(i2 + seekBarPreference.mMinValue, z);
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStartTrackingTouch(SeekBar seekBar) {
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStopTrackingTouch(SeekBar seekBar) {
                int progress = seekBar.getProgress();
                if (SeekBarPreference.this.callChangeListener(Integer.valueOf(progress))) {
                    SeekBarPreference seekBarPreference = SeekBarPreference.this;
                    seekBarPreference.preferenceValue = progress + seekBarPreference.mMinValue;
                    SeekBarPreference seekBarPreference2 = SeekBarPreference.this;
                    seekBarPreference2.persistInt(seekBarPreference2.preferenceValue);
                    SeekBarPreference seekBarPreference3 = SeekBarPreference.this;
                    seekBarPreference3.setValueLabel(seekBarPreference3.preferenceValue, false);
                }
            }
        };
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, com.serenegiant.common.R.styleable.SeekBarPreference, i, 0);
        this.mSeekbarLayoutId = typedArrayObtainStyledAttributes.getResourceId(com.serenegiant.common.R.styleable.SeekBarPreference_seekbar_layout, com.serenegiant.common.R.layout.seekbar_preference);
        this.mSeekbarId = typedArrayObtainStyledAttributes.getResourceId(com.serenegiant.common.R.styleable.SeekBarPreference_seekbar_id, com.serenegiant.common.R.id.seekbar);
        this.mLabelTvId = typedArrayObtainStyledAttributes.getResourceId(com.serenegiant.common.R.styleable.SeekBarPreference_seekbar_label_id, com.serenegiant.common.R.id.seekbar_value_label);
        int i2 = typedArrayObtainStyledAttributes.getInt(com.serenegiant.common.R.styleable.SeekBarPreference_min_value, 0);
        this.mMinValue = i2;
        this.mMaxValue = typedArrayObtainStyledAttributes.getInt(com.serenegiant.common.R.styleable.SeekBarPreference_max_value, 100);
        this.mDefaultValue = typedArrayObtainStyledAttributes.getInt(com.serenegiant.common.R.styleable.SeekBarPreference_default_value, i2);
        this.mScaleValue = typedArrayObtainStyledAttributes.getFloat(com.serenegiant.common.R.styleable.SeekBarPreference_scale_value, 1.0f);
        String string = typedArrayObtainStyledAttributes.getString(com.serenegiant.common.R.styleable.SeekBarPreference_value_format);
        try {
            String.format(string, Float.valueOf(1.0f));
        } catch (Exception unused) {
            string = "%f";
        }
        this.mFmtStr = TextUtils.isEmpty(string) ? "%f" : string;
        typedArrayObtainStyledAttributes.recycle();
    }
}
